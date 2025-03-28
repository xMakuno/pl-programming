is_prime_aux(N, D):-
    D*D > N, !. 
is_prime_aux(N, D):-
    N mod D =\= 0,
    D2 is D + 1,
    is_prime_aux(N, D2).
is_prime(N):-
    is_prime_aux(N,2).

primes_in_range_aux(L, R, CL, CL):-
    L > R.

primes_in_range_aux(L, R, CL, PL):-
    is_prime(L),
    append(CL, [L], CL1),
    is(L1, +(L,1)),
    primes_in_range_aux(L1, R, CL1, PL).

primes_in_range_aux(L, R, CL, PL):-
    % \+(is_prime(L)),
    is(L1, +(L,1)),
    primes_in_range_aux(L1, R, CL1, PL).

primes_in_range(L,R):-
    primes_in_range_aux(L, R, CL, PL).