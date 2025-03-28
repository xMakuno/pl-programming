check([], _, _):- !.  % An empty tree is always a valid BST.

% A single node tree is valid if Min < V < Max.
check([V, [], []], Min, Max) :-
    V > Min, V < Max, !.

% For a tree with left and right subtrees:
check([V, LC, RC], Min, Max) :-
    V > Min, V < Max,       % Current node value should be between Min and Max.
    check(LC, Min, V),      % Left subtree values should be less than V.
    check(RC, V, Max).      % Right subtree values should be greater than V.
