is_prime_aux(N, D):-
    D*D > N, !. 
is_prime_aux(N, D):-
    N mod D =\= 0,
    D2 is D + 1,
    is_prime_aux(N, D2).
is_prime(N):-
    is_prime_aux(N,2).
% Para si el divisor es mayor que la raiz
factorize_aux(N, D, PL, PL):-
    >(*(D,D),N), !.
% Si no es divisor pos sigue no? hahah
factorize_aux(N, D, CL, PL):-
    =\=(0, N mod D),
    is(D1, +(D,1)),
    factorize_aux(N, D1, CL, PL).
% Si es divisor, pos le sacamos todo
factorize_aux(N, D, CL,PL):-
   =:=(0, N mod D),
   is_prime(D),
   append(CL, [D], PL1),
   is(D1, +(D,1)),
   factorize_aux(N, D1, PL1, PL).

factorize(N):-
    factorize_aux(N, 2, [], PL),
    write(PL).