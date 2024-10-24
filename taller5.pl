% EJERCICIO 5
% caso base
es_arbol_busqueda([]) :- !.
 
% caso recursivo
es_arbol_busqueda([Valor, SubArbolIzquierdo, SubArbolDerecho]) :-
  todos_menores(SubArbolIzquierdo, Valor),
  todos_mayores(SubArbolDerecho, Valor),
  es_arbol_busqueda(SubArbolIzquierdo),
  es_arbol_busqueda(SubArbolDerecho).
 
% caso base todos menores
todos_menores([], _) :- !.
% caso recursivo
todos_menores([Valor, SubArbolIzquierdo, SubArbolDerecho], Limite) :-
  <(Valor, Limite),
  todos_menores(SubArbolIzquierdo, Limite),
  todos_menores(SubArbolDerecho, Limite).
 
% caso base todos mayores
todos_mayores([], _) :- !.
% caso recursivo
todos_mayores([Valor, SubArbolIzquierdo, SubArbolDerecho], Limite) :-
  >(Valor, Limite),
  todos_mayores(SubArbolIzquierdo, Limite),
  todos_mayores(SubArbolDerecho, Limite).


% Tarea
% nodos_pares([33, [19, [10, [9, [], []], [15,[],[]]],[22,[],[]]],[36,[34,[],[]],[38,[],[]]]], X).
nodos_pares([],[]).

nodos_pares([X, LT, RT], EvenList):-
    nodos_pares(LT, LEL),
    nodos_pares(RT, REL),
    % X mod 2 is 0, 
    =:=(0, mod(X,2)),
    append(LEL, [ X | REL], EvenList).

nodos_pares([X, LT, RT], EvenList):-
    nodos_pares(LT, LEL),
    nodos_pares(RT, REL),
    append(LEL, REL, EvenList).