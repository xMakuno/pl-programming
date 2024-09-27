% insert_element(Elemento, Lista, Posicion, Contador, Respuesta).



insert_element(X, [], _, _, [X]) :- !.
% Caso Base: Posicion = Contador
insert_element(X, L, P, P, [X | L]) :- !.

% Caso Base: Posicion < Contador

% Caso Recursivo: Contador < Posicion
insert_element(X, [ H | T], P, C, R) :-
    is(C1, +(C,1)),
    insert_element(X, T, P, C1, R_t),
    =(R, [H | R_t]), !.

insert_element(X, L, P, R) :-
    insert_element(X, L, P, 1, R).

% Ejemplo de ejecucion: 
% Insertar al Principio ====> insert_element(5, [1,2,3,4], 1, R).
% Insertar a la Mitad =====> insert_element(5, [1,2,3,4], 2, R).
% Insertar al Final ====> insert_element(5, [1,2,3,4], 6, R).