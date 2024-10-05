% Funcion solo para sacar longitud
get_length([], 0).
get_length( [ _ | T ] , L):- 
    get_length( T , ReturnL ),
    is(L, +(ReturnL, 1)).

% filtrar_longitud_impar([[1, 2, 3], [4, 5, 6, 7], [ 8, 9 ], [10]], ResultingList).
% ResultingList = [ [1,2,3] , [10]]

filtrar_longitud_impar([], []).
filtrar_longitud_impar([ ReadyList | RestOfList ], [ReadyList | ResultingList]):-
    get_length(ReadyList, ReadyLength),
    is(Odd, ReadyLength mod 2),
    Odd =:= 1, % si es impar sigue
    filtrar_longitud_impar(RestOfList, ResultingList). % como en el de arriba quedo agregada no hay pex

filtrar_longitud_impar([ _ | RestOfList], ResultingList):- % pues si fallo nomas retorna lo que tengas master
    filtrar_longitud_impar(RestOfList, ResultingList).
