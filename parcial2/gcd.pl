% GCD Version that returns value
gcd(A, 0, A):-!.
gcd(A, B, D) :- is(R, mod(A,B)), gcd(B, R, D).
% GCD Version that prints out to console
gcd2(A, 0) :- write(A),!.
gcd2(A, B) :- is(R, mod(A,B)), gcd2(B, R).
