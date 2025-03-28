print_asc([]):-!.

print_asc([V, L, R]):-
    print_asc(L),
    write(V), write(' '),
    print_asc(R).
