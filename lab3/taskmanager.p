% task manager
% Task manager using theorem prrofing, using of answers.
%
% Constant: (5): a,b,c,d,e
% Predicates (1): before(2)

fof('axiom1', axiom, before(d,a)).
fof('axiom2', axiom, before(c,b) & before(e,b)).
fof('axiom3', axiom, before(b,e) | before(d,e)).
fof('axiom4', axiom, before(a,c)).
fof('non-reflexivity', axiom, (! [X] : (~before(X,X))) ).
fof('excluding-external', axiom, (! [X,Y] : ((X != a & X != b & X != c & X != d & X != e ) => before(X, Y) ))).
fof('transitivity', axiom, (! [X,Y,Z] : ((before(X,Y) & before(Y,Z)) => before(X,Z)))).
fof('conj', question, (? [X] : (! [Y] : ((X != Y) => (before(Y,X)) )))).