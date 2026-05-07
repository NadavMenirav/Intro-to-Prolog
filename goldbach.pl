% importing the is_prime file
:- [is_prime].

% This function receives a number and returns a list of two prime numbers which sum to that number
goldbach(N, X) :-
    find_primes(N, 2, X), !.

find_primes(N, A, []) :-
    A >= N.

% This helper function finds the pair of the prime numbers
find_primes(N, A, [A, B]) :- 
    B is N - A, 
    is_prime(A), 
    is_prime(B).

find_primes(N, A, Result) :-
    A < N,
    A1 is A + 1,
    find_primes(N, A1, Result).