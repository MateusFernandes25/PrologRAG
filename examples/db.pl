% Scientists
% List of all scientists in the database.
% scientist(X)
scientist(albert_einstein).
scientist(marie_curie).
scientist(isaac_newton).
scientist(charles_darwin).
scientist(galileo_galilei).
scientist(ada_lovelace).
scientist(nikola_tesla).
scientist(rosalind_franklin).
scientist(alan_turing).
scientist(stephen_hawking).
scientist(gregor_mendel).
scientist(alexander_fleming).
scientist(niels_bohr).
scientist(dmitri_mendeleev).
scientist(erwin_schrodinger).
scientist(max_planck).
scientist(carl_sagan).
scientist(richard_feynman).
scientist(barbara_mcclintock).
scientist(james_clerk_maxwell).
scientist(francis_crick).
scientist(james_watson).
scientist(jane_goodall).
scientist(lise_meitner).
scientist(rachel_carson).
scientist(barbara_liskov).
scientist(edwin_hubble).
scientist(vera_rubin).
scientist(paul_dirac).
scientist(emmy_noether).
scientist(michael_faraday).
scientist(alessandro_volta).
scientist(antoine_lavoisier).
scientist(mary_anning).
scientist(hans_bethe).
scientist(marie_anne_lavoisier).
scientist(john_bardeen).
scientist(rosalyn_yalow).
scientist(hypatia).
scientist(leonardo_da_vinci).
scientist(aristotle).
scientist(plato).
scientist(sophie_germain).
scientist(henrietta_swan_leavitt).
scientist(andrei_sakharov).
scientist(katherine_johnson).
scientist(grace_hopper).
scientist(alan_guth).
scientist(pierre_curie).
scientist(ernest_rutherford).
scientist(max_born).
scientist(henri_poincare).
scientist(werner_heisenberg).
scientist(edith_clarke).
scientist(irene_joliot_curie).
scientist(freeman_dyson).
scientist(benoit_mandelbrot).
scientist(gertrude_elion).
scientist(thomas_edison).
scientist(steve_jobs).

% first_name(X, 'First Name').
% Stores the first name of the scientist.
first_name(albert_einstein, 'Albert').
first_name(marie_curie, 'Marie').
first_name(isaac_newton, 'Isaac').
first_name(charles_darwin, 'Charles').
first_name(galileo_galilei, 'Galileo').
first_name(ada_lovelace, 'Ada').
first_name(nikola_tesla, 'Nikola').
first_name(rosalind_franklin, 'Rosalind').
first_name(alan_turing, 'Alan').
first_name(stephen_hawking, 'Stephen').

% last_name(X, 'Last Name').
% Stores the last name of the scientist.
last_name(albert_einstein, 'Einstein').
last_name(marie_curie, 'Curie').
last_name(isaac_newton, 'Newton').
last_name(charles_darwin, 'Darwin').
last_name(galileo_galilei, 'Galilei').
last_name(ada_lovelace, 'Lovelace').
last_name(nikola_tesla, 'Tesla').
last_name(rosalind_franklin, 'Franklin').
last_name(alan_turing, 'Turing').
last_name(stephen_hawking, 'Hawking').

% nationality(X, Nationality).
% Stores the nationality of the scientist.
nationality(albert_einstein, german).
nationality(marie_curie, polish).
nationality(isaac_newton, english).
nationality(charles_darwin, english).
nationality(galileo_galilei, italian).
nationality(ada_lovelace, english).
nationality(nikola_tesla, serbian).
nationality(rosalind_franklin, english).
nationality(alan_turing, english).
nationality(stephen_hawking, english).

% birth_year(X, Year).
% Stores the birth year of the scientist.
birth_year(albert_einstein, 1879).
birth_year(marie_curie, 1867).
birth_year(isaac_newton, 1643).
birth_year(charles_darwin, 1809).
birth_year(galileo_galilei, 1564).
birth_year(ada_lovelace, 1815).
birth_year(nikola_tesla, 1856).
birth_year(rosalind_franklin, 1920).
birth_year(alan_turing, 1912).
birth_year(stephen_hawking, 1942).

% death_year(X, Year).
% Stores the death year of the scientist.
death_year(albert_einstein, 1955).
death_year(marie_curie, 1934).
death_year(isaac_newton, 1727).
death_year(charles_darwin, 1882).
death_year(galileo_galilei, 1642).
death_year(ada_lovelace, 1852).
death_year(nikola_tesla, 1943).
death_year(rosalind_franklin, 1958).
death_year(alan_turing, 1954).
death_year(stephen_hawking, 2018).

% field(X, field).
% Stores the field of expertise.
field(albert_einstein, physics).
field(marie_curie, 'Chemistry and Physics').
field(isaac_newton, 'Mathematics and Physics').
field(charles_darwin, biology).
field(galileo_galilei, 'Astronomy and Physics').
field(ada_lovelace, 'Mathematics and Computing').
field(nikola_tesla, 'Electrical Engineering').
field(rosalind_franklin, 'Molecular Biology').
field(alan_turing, 'Mathematics and Computing').
field(stephen_hawking, 'Theoretical Physics').

% discovery(X, discovery).
% Stores the key discovery of the scientist.
discovery(albert_einstein, 'Theory of Relativity').
discovery(marie_curie, 'Discovery of Polonium and Radium').
discovery(isaac_newton, 'Laws of Motion and Universal Gravitation').
discovery(charles_darwin, 'Theory of Evolution').
discovery(galileo_galilei, 'Improvements to the Telescope and Heliocentrism Defense').
discovery(ada_lovelace, 'First Algorithm for a Computational Machine').
discovery(nikola_tesla, 'Alternating Current and Tesla Coil').
discovery(rosalind_franklin, 'DNA Structure').
discovery(alan_turing, 'Foundations of Computer Science').
discovery(stephen_hawking, 'Black Holes and Hawking Radiation').

% education(X, education).
% Stores the education institution of the scientist.
education(albert_einstein, 'University of Zurich').
education(marie_curie, 'University of Paris').
education(isaac_newton, 'University of Cambridge').
education(charles_darwin, 'University of Cambridge').
education(galileo_galilei, 'University of Pisa').
education(ada_lovelace, 'Private Studies').
education(nikola_tesla, 'Technical University of Graz').
education(rosalind_franklin, 'University of Cambridge').
education(alan_turing, 'University of Cambridge').
education(stephen_hawking, 'University of Oxford').

% residence(X, residence).
% Stores the residence location.
residence(albert_einstein, 'Princeton, USA').
residence(marie_curie, 'Paris, France').
residence(isaac_newton, 'Cambridge, England').
residence(charles_darwin, 'Down, England').
residence(galileo_galilei, 'Florence, Italy').
residence(ada_lovelace, 'London, England').
residence(nikola_tesla, 'New York City, USA').
residence(rosalind_franklin, 'London, England').
residence(alan_turing, 'Manchester, England').
residence(stephen_hawking, 'Cambridge, England').

% Relationships
% collaborated(scientist1, scientist2).
% Indicates collaboration between two scientists.
collaborated(marie_curie, pierre_curie).
