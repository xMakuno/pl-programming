% Mario Antonio Martinez Villatoro 00072520
factorial(0,1):- !.
factorial(1,1):- !.
factorial(N, X) :-
    is(N1, -(N,1)),
    factorial(N1, Y),
    is(X, *(N,Y)).

permutate(N,R) :-
    factorial(N, X),
    is(R1, -(N,R)),
    factorial(R1, Y),
    is(R2, div(X,Y)),
    write(R2).
