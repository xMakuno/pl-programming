% unzip(ZippedList, List1, List2, ReturnValue1, ReturnValue2).
% unzip([ [3,7], [2,6], [1,5] ]).
% should return:
% R1 = [3,2,1]
% R2 = [7,6,5]
unzip([ [ R1, R2 ] | []], R1, R2):-!.
unzip([[L1, L2] | T], [L1 | R1], [L2 | R2]):-
    unzip(T, R1, R2).
unzip(L):-
    unzip(L, [], []).