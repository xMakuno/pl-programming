% Base case: empty list results in two empty lists.
unzip([], [], []).

% Recursive case: split head and recurse on the tail.
unzip([[L1, L2] | T], [L1 | R1], [L2 | R2]) :-
    unzip(T, R1, R2).

unzipMain(L):-
    unzip(L, R1, R2),
    write('R1: '), writeln(R1),
    write('R2: '), writeln(R2).