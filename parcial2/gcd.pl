% gcd()
gcd(A, 0) :- write(A),!.
gcd(A, B) :- is(R, mod(A,B)), gcd(B, R).