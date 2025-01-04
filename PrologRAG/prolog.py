from pyswip import Prolog
import logging
logging.getLogger("pyswip").setLevel(logging.ERROR)
from langchain_core.messages import HumanMessage, SystemMessage
import re
import warnings
warnings.filterwarnings("ignore")

class CreateProlog:
    def __init__(self, file_name, llm, chunks):
        """
        Initializes the PrologRAGPDF class.

        Args:
            file_name (str): Name of the output Prolog file.
            llm (object): Language model instance for generating Prolog code.
            chunks (list): List of chunks containing text to process.
        """
        self.file_name = file_name
        self.llm = llm
        self.chunks = chunks
    def generate_prolog_from_chunk(self, chunk,docustring=''):
        """
        Generates Prolog code for a single chunk of text.

        Args:
            chunk (object): A chunk of text with page content.

        Returns:
            str: Prolog code generated from the chunk.
        """
        prompt_template = """
        Instructions: Analyze the provided text and identify all relationships, entities, and logical connections described explicitly or implicitly. Extract the information as Prolog facts and rules, ensuring all logical constructs are represented with accuracy. Use best practices in Prolog to handle symmetry, recursion, and generalization, and include appropriate comments for clarity.

        Text: {text}

        Expected Output:

        % Extract clearly defined relationships or attributes directly extracted from the text. Ex: father(argument1, argument2). mother(argument1, argument2).

        % Extract logical connections derived from the text, modeled as Prolog rules. Ex: alive(X, Y) :- condition1(X, Z), condition2(Z, Y). rule2(X, Y) :- fact1(X, Z), fact2(Z, Y).

        % IMPORTANT: Add docstrings for each predicate and logic with one example in the same line. Example: born_in(Name, Country) - represents a person's country of birth

        % Docustrings already exist: {docustring}

        Example Output:

        % Example relationships
        % person(Name, Age) - predicate - represents a person's age - Example: person(jack, 25) 
        person(jack, 25). 
        person(lisa, 15).
        person(mike, 17).
        
        % born(Name, Age) - predicate - represents a person's city - Example: born(jack, "Las Vegas") 
        born(jack, "Las Vegas"). 

        % Example rules
        % eligible_for_work(Name) - rule - represents tge person's name with less then 18 years old - Example: eligible_for_work(Name) :- person(Name, Age), Age >= 18. 
        eligible_for_work(Name) :- person(Name, Age), Age >= 18.
        """
        prompt = prompt_template.format(text=chunk.page_content,docustring=docustring)
        return self.llm.invoke(prompt)
    def generate_prolog(self):
        """
        Generates Prolog code for all chunks.

        Returns:
            list: A list of Prolog code snippets generated for each chunk.
        """
        docustring=''
        prolog_code, comments = [],[]
        for chunk in self.chunks:
            prolog = self.generate_prolog_from_chunk(chunk,docustring)
            prolog_code.append(prolog)
            lines = prolog.splitlines()
            for line in lines:
                stripped = line.strip()
                if stripped.startswith('%') and '-' in stripped:
                    comments.append(stripped)
            docustring = '\n'.join(comments)
        return prolog_code
    def organize_prolog_code(self):
        """
        Organizes the generated Prolog code into comments, predicates, and rules.

        Returns:
            str: The organized Prolog code.
        """
        prolog_code = '\n'.join(self.generate_prolog())
        # Separate comments, predicates, and rules
        predicate_pattern = re.compile(r'^\w+\(.*\)\.$')
        lines = prolog_code.splitlines()
        comments, predicates, rules = [], [], []
        for line in lines:
            stripped = line.strip()
            if not stripped:
                continue
            if stripped.startswith('%') and '-' in stripped:
                comments.append(stripped)
            elif predicate_pattern.match(stripped) and ':-' not in stripped:
                predicates.append(stripped)
            elif ':-' in stripped:
                rules.append(stripped)
        # Sort and remove duplicates
        predicates.sort(key=str.lower)
        rules.sort(key=str.lower)
        comments = sorted(set(comments), key=str.lower)
        organized_output = "\n".join(comments) + "\n\n" + "\n".join(predicates) + "\n\n" + "\n".join(rules)
        output_file_name = self.file_name.replace('.pdf', '.pl')
        with open(output_file_name, "w") as file:
            file.write(organized_output)
        return True


class PreProcessing:
    def __init__(self, file_path):
        self.file_path = file_path
    def extract_prolog_with_docstrings(self, prolog_code):
        """
        Extracts lines from a Prolog code that contain comments (%).

        Args:
            prolog_code (str): Prolog code as a string.

        Returns:
            str: Lines from the Prolog code that contain comments.
        """
        pattern = r'^.*%.*$'
        matches = re.findall(pattern, prolog_code, re.MULTILINE)
        #IMPORTANTE! Reorganize o arquivo db.pl para que todas as cláusulas de cada predicado fiquem juntas.
        return '\n \n'.join(match.strip() for match in matches)
    def extract_prolog(self):
        """
        Reads the Prolog file and extracts comments.

        Returns:
            str: Extracted code with comments.
        """
        with open(self.file_path, 'r', encoding='iso-8859-1') as file:
            prolog_code = file.read()
        return self.extract_prolog_with_docstrings(prolog_code)



class PrologRAG:
    def __init__(self, slm,file_path, llm, question):
        """
        Initializes the PrologRAG class.

        Args:
            file_path (str): Path to the Prolog file.
            openai_key (str): API key for OpenAI.
            question (str): The question to be used for the Prolog query.
        """
        self.slm = slm
        self.llm = llm
        self.file_path = file_path
        self.question = question
        pre_processor = PreProcessing(self.file_path)
        self.prolog_base = pre_processor.extract_prolog()
    def _build_prompt(self):
        """
        Builds the prompt for the Prolog query.

        Returns:
            str: The formatted prompt.
        """
        return (
            f'''Instructions: Using STRICTLY the Prolog docustring database provided below, generate a query in Prolog '''
            f'''\n\nProlog Database:\n\n{self.prolog_base}'''
            f'''that strictly answers the following question: '{self.question}' '''
            f'''You must use only the facts and rules available in the database.'''
            f'''Respond exclusively in one of the following formats: '''
            f'''- If the query can be generated: 
                true: <prolog_query>'''
            f'''- If the query cannot be generated: 
                false: <detailed_reason>"'''
            f'''Provide a clear and categorical response. Do not entertain ambiguities or alternatives.'''
            f'''Ensure that the variables are properly instantiated before being used in operations such as comparisons or calculations'''
            f'''Using STRICTLY the Prolog docustring database'''
        )
    def prolog_query(self):
        """
        Sends a query to the OpenAI API using the Prolog database and the question.

        Returns:
            str: The response from the OpenAI API or an error message.
        """
        prompt_base = self._build_prompt()
        chat_template = [SystemMessage(prompt_base)]
        try:
            answer = self.slm.invoke(chat_template)
            return answer
        except (KeyError, IndexError) as e:
            return f"Unexpected response format: {e}"
    def run_prolog_query(self):
        """
        Executes the Prolog query in the Prolog engine.

        Returns:
            list: The result of the query execution.
        """
        query = self.prolog_query().strip()
        if "Request failed" in query or "Unexpected response format" in query:
            return query
        if 'true' in query:
            query = query[query.find(":")+2:-1].strip().replace('"','')
            try:
                prolog = Prolog()
                prolog.consult(self.file_path)  # Consult the Prolog file.
                results = list(prolog.query(query))
                return results
            except Exception as e:
                return f"Prolog execution failed: {e}"
        else:
            try:
                final = query[query.find(":")+1:-1].strip()
                return final
            except (KeyError, IndexError) as e:
                return f"Unexpected response format: {e}"
    def answer_query(self):
        """
        Sends a query to the OpenAI API using the Prolog answer.

        Returns:
            str: The response from the OpenAI API or an error message.
        """
        answer = self.run_prolog_query()
        answer = "Anyone" if answer == [] else answer
        chat_template = [
            HumanMessage(f'''
            Create a Answer concise about the question using ONLY de data. 
            Based only in the data.
        
            Question: {self.question}
            Data: {answer}
            Answer:
            ''')]
        try:
            final = self.llm.invoke(chat_template)
            return final.strip()
        except (KeyError, IndexError) as e:
            return f"Unexpected response format: {e}"




