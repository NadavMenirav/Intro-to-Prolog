% This funciton returns the element of the list in the required index
element_at(H, [H|_], 1).
element_at(X, [_|T], K) :- K > 1, K1 is K - 1, element_at(X, T, K1).