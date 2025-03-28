print_desc([]):-!.

print_desc([V, L, R]):-
    print_desc(R),
    write(V), write(' '),
    print_desc(L).
