is_prime_aux(N, D):-
    D*D > N, !. 
is_prime_aux(N, D):-
    N mod D =\= 0,
    D2 is D + 1,
    is_prime_aux(N, D2).
is_prime(N):-
    is_prime_aux(N,2).