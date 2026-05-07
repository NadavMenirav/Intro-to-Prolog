% This predicate receives two boolean values and returns their "AND"
and(X, Y) :- X, Y.

% This predicate receives two boolean values and returns the logical "OR"
or(X, Y) :- X; Y.

% This predicate receives a boolean value and returns its negation
not(X) :- X, !, fail.
not(_).

% This predicate receives two boolean values and returns their "XOR"
xor(X, Y) :-
    X, not(Y).
xor(X, Y) :-
    not(X), Y.

% This predicate receives two boolean values and returns their "NAND"
nand(X, Y) :- not(and(X, Y)).

% This predicate receives two boolean values and returns their "NOR"
nor(X, Y) :- not(or(X, Y)).

% This predicate receives two boolean values and returns their "XNOR"
equal(X, Y) :- not(xor(X, Y)).
