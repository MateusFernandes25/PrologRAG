# PrologRAG

PrologRAG is an innovative framework that leverages the concept of Retrieval-Augmented Generation (RAG) to organize and answer queries about documents in Prolog format. This project extracts knowledge from documents, transforms it into structured Prolog code, and provides accurate and contextual answers to questions.

## Features  
- **PDF document conversion**: Loads PDF documents and splits them into manageable chunks.  
- **Prolog code generation**: Organizes extracted information into Prolog code format.  
- **Query answering**: Enables natural language queries related to the processed content.  

## How to Use  

### Installation  
1. Clone this repository:  
   ```bash
   sudo apt-get install swi-prolog #Install SWI-PROLOG
   git clone https://github.com/your_user/prolog-rag.git
   cd PrologRAG
   python3 -m venv venv
   source venv/bin/activate 
   pip install ".[all]"


## Step-by-Step

1. Use PyPDFLoader to load the document content and split it into chunks:
   ```bash   
   from langchain.document_loaders import TextLoader, CSVLoader, PyPDFLoader
   from langchain.text_splitter import RecursiveCharacterTextSplitter
   
   FILE = "examples/Scientist.pdf"
   loader = PyPDFLoader(FILE)
   documents = loader.load()
   text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=200)
   chunks = text_splitter.split_documents(documents)

2. Imports and LLM
   ```bash
   from PrologRAG import CreateProlog, PrologRAG
   from langchain_openai import OpenAI

   #Activate LLM
   llm = OpenAI(openai_api_key=api_key,temperature=0, max_tokens=1000)
   


3. Use the PrologRAGPDF class to generate the Prolog code:
   ```bash
   file_name = "examples/Scientist.pl"
   prolog = CreateProlog(file_name, llm=llm, chunks=chunks)
   prolog.organize_prolog_code()
   
4. Perform queries using the PrologRAG class:
   ```bash
   #slm (Small Language Model) - Transform question in Prolog Query
   #llm (Large Language Model) - Use query result as context to answer question
   file_path = "examples/Scientist.pl"
   question = "Who was Marie Curie's husband?"
   prolog_rag = PrologRAG(slm=llm, file_path=file_path, llm=llm, question=question)
   result = prolog_rag.answer_query()



## Author
Developed by Mateus Fernandes dos Santos e Claudionor Coelho Jr.
