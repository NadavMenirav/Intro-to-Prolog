% This function checks whether a number is prime
is_prime(N):-
    N > 1,
    has_no_divisors(N, 2).

% This function checks whether N has a divisors between D an N - 1
has_no_divisors(N, N).
has_no_divisors(N, D):- D < N, N mod D > 0, D1 is D + 1, has_no_divisors(N, D1).