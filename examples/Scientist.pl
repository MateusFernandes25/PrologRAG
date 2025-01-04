% birthplace(Name, Country) - predicate - represents a scientist's name and their country of birth
% birthplace(Name, Country) - predicate - represents a scientist's name and their country of birth - Example: birthplace("Albert Einstein", "Germany")
% brilliant_mind(Name) - rule - represents a scientist's name as a brilliant mind
% brilliant_mind(Name) - rule - represents a scientist's name as a brilliant mind - Example: brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity"
% contribution(Name, Field, Contribution) - predicate - represents a scientist's name, field of study, and contribution
% contribution(Name, Field, Contribution) - predicate - represents a scientist's name, field of study, and contribution - Example: contribution("Albert Einstein", "Physics", "Theory of Relativity")
% education(Name, University) - predicate - represents a scientist's name and their university of study
% education(Name, University) - predicate - represents a scientist's name and their university of study - Example: education("Albert Einstein", "University of Zurich")
% legacy(Name, Field) - predicate - represents a scientist's name and their legacy
% legacy(Name, Field) - predicate - represents a scientist's name and their legacy - Example: legacy("Albert Einstein", "Physics")
% residence(Name, City) - predicate - represents a scientist's name and their city of residence
% residence(Name, City) - predicate - represents a scientist's name and their city of residence - Example: residence("Albert Einstein", "Princeton")
% revolutionized(Field) - rule - represents a field of study as being revolutionized
% revolutionized(Field) - rule - represents a field of study as being revolutionized - Example: revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity"
% scientist(Name, Field) - predicate - represents a scientist's name and field of study
% scientist(Name, Field) - predicate - represents a scientist's name and field of study - Example: scientist("Marie Curie", "Physics")

birthplace("Ada Lovelace", "England").
birthplace("Ada Lovelace", "England").
birthplace("Ada Lovelace", "England").
birthplace("Ada Lovelace", "England").
birthplace("Ada Lovelace", "England").
birthplace("Alan Turing", "England").
birthplace("Alan Turing", "England").
birthplace("Alan Turing", "England").
birthplace("Albert Einstein", "Germany").
birthplace("Albert Einstein", "Germany").
birthplace("Albert Einstein", "Germany").
birthplace("Albert Einstein", "Germany").
birthplace("Albert Einstein", "Germany").
birthplace("Charles Babbage", "England").
birthplace("Charles Babbage", "England").
birthplace("Charles Babbage", "England").
birthplace("Charles Babbage", "England").
birthplace("Charles Darwin", "England").
birthplace("Charles Darwin", "England").
birthplace("Charles Darwin", "England").
birthplace("Charles Darwin", "England").
birthplace("Galileo Galilei", "Italy").
birthplace("Galileo Galilei", "Italy").
birthplace("Isaac Newton", "England").
birthplace("Isaac Newton", "England").
birthplace("Isaac Newton", "England").
birthplace("Marie Curie", "Poland").
birthplace("Marie Curie", "Poland").
birthplace("Marie Curie", "Poland").
birthplace("Marie Curie", "Poland").
birthplace("Marie Curie", "Poland").
birthplace("Marie Curie", "Poland").
birthplace("Nikola Tesla", "Serbia").
birthplace("Nikola Tesla", "Serbia").
birthplace("Nikola Tesla", "Serbia").
birthplace("Nikola Tesla", "Serbia").
birthplace("Nikola Tesla", "Serbia").
birthplace("Pierre Curie", "France").
birthplace("Pierre Curie", "France").
birthplace("Rosalind Franklin", "England").
birthplace("Rosalind Franklin", "England").
birthplace("Stephen Hawking", "England").
birthplace("Stephen Hawking", "England").
birthplace("Stephen Hawking", "England").
contribution("Ada Lovelace", "Computer Science", "Collaboration with Charles Babbage").
contribution("Ada Lovelace", "Computer Science", "First computer programmer").
contribution("Alan Turing", "Computer Science", "Fundamental Works").
contribution("Alan Turing", "Computing", "Enigma Machine").
contribution("Alan Turing", "Mathematics", "Turing Machine").
contribution("Alan Turing", "Mathematics", "Turing Machine").
contribution("Albert Einstein", "Computing", "General Theory of Computation").
contribution("Albert Einstein", "Mathematics", "Theory of Relativity").
contribution("Albert Einstein", "Physics", "Theory of Relativity").
contribution("Albert Einstein", "Physics", "Theory of Relativity").
contribution("Albert Einstein", "Physics", "Theory of Relativity").
contribution("Albert Einstein", "Physics", "Theory of Relativity").
contribution("Albert Einstein", "Physics", "Theory of Relativity").
contribution("Charles Darwin", "Biology", "Theory of Evolution by Natural Selection").
contribution("Charles Darwin", "Biology", "Theory of Evolution").
contribution("Charles Darwin", "Biology", "Theory of Evolution").
contribution("Charles Darwin", "Biology", "Theory of Evolution").
contribution("Charles Darwin", "Biology", "Theory of Evolution").
contribution("Charles Darwin", "Chemistry", "Chemical Reactions").
contribution("Charles Darwin", "Mathematics", "Theory of Evolution").
contribution("Galileo Galilei", "Astronomy", "Defense of the heliocentric theory").
contribution("Galileo Galilei", "Astronomy", "Improvements to the Telescope").
contribution("Galileo Galilei", "Astronomy", "Improvements to the telescope").
contribution("Galileo Galilei", "Physics", "Law of Inertia").
contribution("Isaac Newton", "Physics", "Law of Universal Gravitation").
contribution("Isaac Newton", "Physics", "Laws of Motion and Universal Gravitation").
contribution("Isaac Newton", "Physics", "Theory of gravitation").
contribution("Isaac Newton", "Physics", "Theory of Gravity").
contribution("Marie Curie", "Chemistry and Physics", "discovered the chemical elements polonium and radium").
contribution("Marie Curie", "Chemistry", "Discovery of polonium").
contribution("Marie Curie", "Chemistry", "Discovery of radium").
contribution("Marie Curie", "Chemistry", "Radioactive Elements").
contribution("Marie Curie", "Mathematics", "Radioactivity").
contribution("Marie Curie", "Physics", "Radioactivity").
contribution("Marie Curie", "Physics", "Radioactivity").
contribution("Marie Curie", "Physics", "Radioactivity").
contribution("Marie Curie", "Physics", "Radioactivity").
contribution("Marie Curie", "Physics", "Radioactivity").
contribution("Nikola Tesla", "Electrical Engineering", "Innovations in Alternating Current").
contribution("Nikola Tesla", "Electrical Engineering", "Invention of the Tesla Coil").
contribution("Pierre Curie", "Physics", "Radioactivity").
contribution("Pierre Curie", "Physics", "Radioactivity").
contribution("Rosalind Franklin", "DNA Structure", "Crucial Role in Discovery").
contribution("Stephen Hawking", "Computing", "Artificial Intelligence").
contribution("Stephen Hawking", "Mathematics", "Black Holes").
contribution("Stephen Hawking", "Physics", "Black Holes").
contribution("Stephen Hawking", "Physics", "Black Holes").
contribution("Stephen Hawking", "Theoretical Physics", "Studies on Black Holes and Hawking Radiation").
education("Ada Lovelace", "Private studies").
education("Ada Lovelace", "Private Studies").
education("Ada Lovelace", "Private Studies").
education("Ada Lovelace", "Private Studies").
education("Ada Lovelace", "Private Studies").
education("Alan Turing", "King's College, Cambridge").
education("Alan Turing", "University of Cambridge").
education("Alan Turing", "University of Cambridge").
education("Albert Einstein", "University of Zurich").
education("Albert Einstein", "University of Zurich").
education("Albert Einstein", "University of Zurich").
education("Albert Einstein", "University of Zurich").
education("Albert Einstein", "University of Zurich").
education("Charles Babbage", "Cambridge University").
education("Charles Babbage", "Cambridge University").
education("Charles Babbage", "Cambridge University").
education("Charles Babbage", "Cambridge University").
education("Charles Darwin", "University of Cambridge").
education("Charles Darwin", "University of Cambridge").
education("Charles Darwin", "University of Edinburgh").
education("Galileo Galilei", "University of Pisa").
education("Galileo Galilei", "University of Pisa").
education("Isaac Newton", "University of Cambridge").
education("Isaac Newton", "University of Cambridge").
education("Isaac Newton", "University of Cambridge").
education("Marie Curie", "Sorbonne University").
education("Marie Curie", "Sorbonne University").
education("Marie Curie", "Sorbonne University").
education("Marie Curie", "University of Paris").
education("Marie Curie", "University of Paris").
education("Nikola Tesla", "Technical University of Graz").
education("Nikola Tesla", "Technical University of Graz").
education("Nikola Tesla", "Technical University of Graz").
education("Nikola Tesla", "Technical University of Graz").
education("Nikola Tesla", "Technical University of Graz").
education("Pierre Curie", "Sorbonne University").
education("Rosalind Franklin", "University of Cambridge").
education("Rosalind Franklin", "University of Cambridge").
education("Stephen Hawking", "University of Cambridge").
education("Stephen Hawking", "University of Cambridge").
education("Stephen Hawking", "University of Oxford").
legacy("Ada Lovelace", "Computer Science").
legacy("Alan Turing", "Computer Science").
legacy("Alan Turing", "Computing").
legacy("Alan Turing", "Mathematics").
legacy("Alan Turing", "Mathematics").
legacy("Albert Einstein", "Computing").
legacy("Albert Einstein", "Mathematics").
legacy("Albert Einstein", "Physics").
legacy("Albert Einstein", "Physics").
legacy("Albert Einstein", "Physics").
legacy("Albert Einstein", "Physics").
legacy("Albert Einstein", "Physics").
legacy("Charles Darwin", "Biology").
legacy("Charles Darwin", "Biology").
legacy("Charles Darwin", "Biology").
legacy("Charles Darwin", "Biology").
legacy("Charles Darwin", "Biology").
legacy("Charles Darwin", "Chemistry").
legacy("Charles Darwin", "Mathematics").
legacy("Galileo Galilei", "Astronomy").
legacy("Galileo Galilei", "Astronomy").
legacy("Galileo Galilei", "Physics").
legacy("Isaac Newton", "Physics").
legacy("Isaac Newton", "Physics").
legacy("Isaac Newton", "Physics").
legacy("Isaac Newton", "Physics").
legacy("Marie Curie", "Chemistry and Physics").
legacy("Marie Curie", "Chemistry").
legacy("Marie Curie", "Chemistry").
legacy("Marie Curie", "Mathematics").
legacy("Marie Curie", "Physics").
legacy("Marie Curie", "Physics").
legacy("Marie Curie", "Physics").
legacy("Marie Curie", "Physics").
legacy("Marie Curie", "Physics").
legacy("Marie Curie", "Physics").
legacy("Nikola Tesla", "Electrical Engineering").
legacy("Pierre Curie", "Physics").
legacy("Rosalind Franklin", "DNA Structure").
legacy("Stephen Hawking", "Computing").
legacy("Stephen Hawking", "Mathematics").
legacy("Stephen Hawking", "Physics").
legacy("Stephen Hawking", "Physics").
legacy("Stephen Hawking", "Theoretical Physics").
residence("Ada Lovelace", "London").
residence("Ada Lovelace", "London").
residence("Ada Lovelace", "London").
residence("Ada Lovelace", "London").
residence("Ada Lovelace", "Unknown").
residence("Alan Turing", "Manchester").
residence("Alan Turing", "Manchester").
residence("Alan Turing", "Manchester").
residence("Albert Einstein", "Princeton").
residence("Albert Einstein", "Princeton").
residence("Albert Einstein", "Princeton").
residence("Albert Einstein", "Princeton").
residence("Albert Einstein", "Princeton").
residence("Charles Babbage", "London").
residence("Charles Babbage", "London").
residence("Charles Babbage", "London").
residence("Charles Babbage", "London").
residence("Charles Darwin", "Down House").
residence("Charles Darwin", "Down House").
residence("Charles Darwin", "Down").
residence("Galileo Galilei", "Florence").
residence("Galileo Galilei", "Florence").
residence("Isaac Newton", "Cambridge").
residence("Isaac Newton", "Cambridge").
residence("Isaac Newton", "London").
residence("Marie Curie", "Paris").
residence("Marie Curie", "Paris").
residence("Marie Curie", "Paris").
residence("Marie Curie", "Paris").
residence("Nikola Tesla", "New York").
residence("Nikola Tesla", "New York").
residence("Nikola Tesla", "New York").
residence("Nikola Tesla", "New York").
residence("Nikola Tesla", "United States").
residence("Pierre Curie", "Paris").
residence("Rosalind Franklin", "London").
residence("Rosalind Franklin", "London").
residence("Stephen Hawking", "Cambridge").
residence("Stephen Hawking", "Cambridge").
residence("Stephen Hawking", "Cambridge").
scientist("Ada Lovelace", "Computer Science").
scientist("Ada Lovelace", "Mathematics").
scientist("Ada Lovelace", "Mathematics").
scientist("Ada Lovelace", "Mathematics").
scientist("Ada Lovelace", "Mathematics").
scientist("Ada Lovelace", "Mathematics").
scientist("Alan Turing", "computer science").
scientist("Alan Turing", "Computer Science").
scientist("Alan Turing", "Computing").
scientist("Alan Turing", "Mathematics").
scientist("Alan Turing", "Mathematics").
scientist("Albert Einstein", "Computing").
scientist("Albert Einstein", "Mathematics").
scientist("Albert Einstein", "Physics").
scientist("Albert Einstein", "Physics").
scientist("Albert Einstein", "Physics").
scientist("Albert Einstein", "Physics").
scientist("Albert Einstein", "Physics").
scientist("Charles Babbage", "Mathematics").
scientist("Charles Babbage", "Mathematics").
scientist("Charles Babbage", "Mathematics").
scientist("Charles Babbage", "Mathematics").
scientist("Charles Babbage", "Mathematics").
scientist("Charles Darwin", "Biology").
scientist("Charles Darwin", "Biology").
scientist("Charles Darwin", "Biology").
scientist("Charles Darwin", "Biology").
scientist("Charles Darwin", "Biology").
scientist("Charles Darwin", "Chemistry").
scientist("Charles Darwin", "Mathematics").
scientist("Galileo Galilei", "Astronomy").
scientist("Galileo Galilei", "Astronomy").
scientist("Galileo Galilei", "Physics").
scientist("Isaac Newton", "Physics").
scientist("Isaac Newton", "Physics").
scientist("Isaac Newton", "Physics").
scientist("Isaac Newton", "Physics").
scientist("Marie Curie", "Chemistry and Physics").
scientist("Marie Curie", "Chemistry").
scientist("Marie Curie", "Chemistry").
scientist("Marie Curie", "Mathematics").
scientist("Marie Curie", "Physics").
scientist("Marie Curie", "Physics").
scientist("Marie Curie", "Physics").
scientist("Marie Curie", "Physics").
scientist("Marie Curie", "Physics").
scientist("Marie Curie", "Physics").
scientist("Nikola Tesla", "Electrical Engineering").
scientist("Nikola Tesla", "Electrical Engineering").
scientist("Nikola Tesla", "Electrical Engineering").
scientist("Nikola Tesla", "Electrical Engineering").
scientist("Nikola Tesla", "Electrical Engineering").
scientist("Pierre Curie", "Physics").
scientist("Pierre Curie", "Physics").
scientist("Rosalind Franklin", "DNA Structure").
scientist("Rosalind Franklin", "DNA structure").
scientist("Stephen Hawking", "Computing").
scientist("Stephen Hawking", "Mathematics").
scientist("Stephen Hawking", "Physics").
scientist("Stephen Hawking", "Physics").
scientist("Stephen Hawking", "Theoretical Physics").

brilliant_mind("Alan Turing") :- contribution("Alan Turing", "computer science", _).
brilliant_mind("Rosalind Franklin") :- contribution("Rosalind Franklin", "DNA structure", _).
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Artificial Intelligence".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Black Holes".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Black Holes".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Chemical Reactions".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Collaboration with Charles Babbage".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Crucial Role in Discovery".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Defense of the heliocentric theory".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "discovered the chemical elements polonium and radium".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Enigma Machine".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "First computer programmer".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Fundamental Works".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "General Theory of Computation".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Improvements to the Telescope".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Improvements to the telescope".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Innovations in Alternating Current".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Invention of the Tesla Coil".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Law of Inertia".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Law of Universal Gravitation".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Laws of Motion and Universal Gravitation".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Radioactive Elements".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Radioactivity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Radioactivity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Radioactivity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Studies on Black Holes and Hawking Radiation".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution by Natural Selection".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of gravitation".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Gravity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
brilliant_mind(Name) :- contribution(Name, Field, Contribution), Contribution == "Turing Machine".
brilliant_mind(Name) :- scientist(Name, Field), Field == "Electrical Engineering".
brilliant_mind(Name) :- scientist(Name, Field), Field == "Electrical Engineering".
brilliant_mind(Name) :- scientist(Name, Field), Field == "Electrical Engineering".
brilliant_mind(Name) :- scientist(Name, Field), Field == "Electrical Engineering".
brilliant_mind(Name) :- scientist(Name, Field), Field == "Mathematics".
brilliant_mind(Name) :- scientist(Name, Field), Field == "Mathematics".
brilliant_mind(Name) :- scientist(Name, Field), Field == "Mathematics".
brilliant_mind(Name) :- scientist(Name, Field), Field == "Mathematics".
revolutionized("Astronomy") :- contribution(Name, Field, Contribution), Contribution == "Defense of the heliocentric theory".
revolutionized("Astronomy") :- contribution(Name, Field, Contribution), Contribution == "Improvements to the Telescope".
revolutionized("Astronomy") :- contribution(Name, Field, Contribution), Contribution == "Improvements to the telescope".
revolutionized("Biology") :- contribution(Name, Field, Contribution), Contribution
revolutionized("Biology") :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution by Natural Selection".
revolutionized("Biology") :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution".
revolutionized("Biology") :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution".
revolutionized("Chemistry and Physics") :- contribution(Name, Field, Contribution), Contribution == "discovered the chemical elements polonium and radium".
revolutionized("Chemistry") :- contribution(Name, Field, Contribution), Contribution == "Discovery of polonium".
revolutionized("Chemistry") :- contribution(Name, Field, Contribution), Contribution == "Discovery of radium".
revolutionized("computer science") :- contribution("Alan Turing", "computer science", _).
revolutionized("Computer Science") :- contribution(Name, Field, Contribution), Contribution == "Collaboration with Charles Babbage".
revolutionized("Computer Science") :- contribution(Name, Field, Contribution), Contribution == "First computer programmer".
revolutionized("DNA structure") :- contribution("Rosalind Franklin", "DNA structure", _).
revolutionized("DNA Structure") :- contribution(Name, Field, Contribution), Contribution == "Crucial Role in Discovery".
revolutionized("Electrical Engineering") :- contribution(Name, Field, Contribution), Contribution == "Innovations in Alternating Current".
revolutionized("Electrical Engineering") :- contribution(Name, Field, Contribution), Contribution == "Invention of the Tesla Coil".
revolutionized("Electrical Engineering") :- contribution(Name, Field, Contribution), Field == "Electrical Engineering".
revolutionized("Electrical Engineering") :- contribution(Name, Field, Contribution), Field == "Electrical Engineering".
revolutionized("Electrical Engineering") :- contribution(Name, Field, Contribution), Field == "Electrical Engineering".
revolutionized("Electrical Engineering") :- contribution(Name, Field, Contribution), Field == "Electrical Engineering".
revolutionized("Mathematics") :- contribution(Name, Field, Contribution), Field == "Mathematics".
revolutionized("Mathematics") :- contribution(Name, Field, Contribution), Field == "Mathematics".
revolutionized("Mathematics") :- contribution(Name, Field, Contribution), Field == "Mathematics".
revolutionized("Mathematics") :- contribution(Name, Field, Contribution), Field == "Mathematics".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Black Holes".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Black Holes".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Laws of Motion and Universal Gravitation".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Radioactivity".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Theory of gravitation".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Theory of Gravity".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
revolutionized("Physics") :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".
revolutionized(Field) :- contribution(Name, Field, Contribution), Contribution == "Fundamental Works".
revolutionized(Field) :- contribution(Name, Field, Contribution), Contribution == "Law of Inertia".
revolutionized(Field) :- contribution(Name, Field, Contribution), Contribution == "Law of Universal Gravitation".
revolutionized(Field) :- contribution(Name, Field, Contribution), Contribution == "Radioactivity".
revolutionized(Field) :- contribution(Name, Field, Contribution), Contribution == "Studies on Black Holes and Hawking Radiation".
revolutionized(Field) :- contribution(Name, Field, Contribution), Contribution == "Theory of Evolution".
revolutionized(Field) :- contribution(Name, Field, Contribution), Contribution == "Theory of Relativity".