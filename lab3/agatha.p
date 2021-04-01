% Who killed Aunt Agatha?
% Simple proof given a set of assumptions, private investigation style
%
% Constant: (3) agatha, butler, charles
% Predicates (x): hates(2), richer(2), kills(2), lives(1)

fof('axiom1', axiom, (? [X] : (lives(X) & kills(X, agatha)) ) ).
fof('axiom2', axiom, lives(agatha)).
fof('axiom3', axiom, lives(butler)).
fof('axiom4', axiom, lives(charles)).
fof('axiom5', axiom, (! [X] : (lives(X) => (X = agatha | X = butler | X = charles)))).
fof('axiom6', axiom, (! [X,Y] : (kills(X,Y) => hates(X,Y)))).
fof('axiom7', axiom, (! [X,Y] : (kills(X,Y) => ~richer(X,Y))) ).
fof('axiom8', axiom, (! [X] : (hates(agatha, X) => ~hates(charles,X))) ).
fof('axiom9', axiom, (! [X] : (X != butler => hates(agatha,X)) )).
fof('axiom10', axiom, (! [X] : (~richer(X,agatha) => hates(butler, X)) )).
fof('axiom11', axiom, (! [X] : (hates(agatha, X) => hates(butler, X)) ) ).
fof('axiom12', axiom, (! [X] : (? [Y] : (~hates(X,Y))) ) ).
fof('axiom13', axiom, agatha != butler).
fof('conj', conjecture, kills(butler, charles)).
