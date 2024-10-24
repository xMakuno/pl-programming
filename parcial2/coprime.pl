% Utilidades
gcd(A, 0, A):-!.
gcd(A, B, D) :- is(R, mod(A,B)), gcd(B, R, D).
% si muere, por si acaso XD
coprime(1,_):-!.
coprime(_,1):-!.
coprime(0,1):-!.
coprime(1,0):-!.
coprime(-1,0):-!.
coprime(0,-1):-!.
% coprime(A,B).
coprime(A,B):-
    gcd(A,B,D),
    is(D,1),!.

