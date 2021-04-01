% Sokrates execise
% Simple proof of syllogism
%
% Constant: (1) sokrates
% Predicates: (2) human(1), mortal(1)
% 2 axioms, 1 conjecture

fof('axiom1', axiom, human(sokrates)).
fof('axiom2', axiom, (! [A] : (human(A) => mortal(A)) )).
fof('conj', conjecture, mortal(sokrates)).
