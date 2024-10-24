% gcd code but with variable
gcd(A, 0, A):-!.
gcd(A, B, D) :- is(R, mod(A,B)), gcd(B, R, D).

% lcm utilizes the gcd

lcm(A, B, M):-
    gcd(A, B, D),
    is(M, div(*(A,B), D)).