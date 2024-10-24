% Helper to check if N is prime
is_prime_aux(N, D):-
    D * D > N, !. 
is_prime_aux(N, D):-
    N mod D =\= 0,
    D2 is D + 1,
    is_prime_aux(N, D2).
is_prime(N):-
    is_prime_aux(N, 2).

% Base case: If N becomes 1, stop recursion and return the current list
factorize_aux(1, _, CL, CL) :- !.

% Case when D*D > N: N itself is prime, add it to the list
factorize_aux(N, D, CL, PL):-
    D * D > N,
    is_prime(N),
    \+ member(N, CL),
    append(CL, [N], PL), !.

% Case when D is not a divisor, continue with D+1
factorize_aux(N, D, CL, PL):-
    N mod D =\= 0,
    D1 is D + 1,
    factorize_aux(N, D1, CL, PL).

% Case when D is a divisor and prime, divide N by D and add D to the list
factorize_aux(N, D, CL, PL):-
   N mod D =:= 0,
   is_prime(D),
   \+ member(D, CL),  % Avoid duplicate primes
   append(CL, [D], PL1),
   N1 is N // D,      % Continue with N divided by D
   factorize_aux(N1, D, PL1, PL).

% Case when D is a divisor but already in the list, just divide N
factorize_aux(N, D, CL, PL):-
   N mod D =:= 0,
   N1 is N // D,      % Continue with N divided by D
   factorize_aux(N1, D, CL, PL).

% Factorize starting from 2
factorize(N):-
    factorize_aux(N, 2, [], PL),
    write(PL).
