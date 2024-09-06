% Actividades Disponibles
% nombre_actividad y tipo
actividad(trivia, juegos).
actividad(twister, juegos).
actividad(jenga, juegos).
actividad(uno, juegos).
actividad(smash, juegos).

actividad(manualidades, creatividad).
actividad(dibujo, creatividad).

actividad(magia, entretenimiento).
actividad(comedia, entretenimiento).
actividad(concierto, entretenimiento).

% Preferencias de Invitados
preferencia(mario, juegos).
preferencia(mario, creatividad).
preferencia(mario, entretenimiento).
preferencia(melvin, juegos).
preferencia(guidos, juegos).
preferencia(rene, juegos).
preferencia(rene, entretenimiento).
preferencia(david, entretenimiento).

% Asistencia de Invitados
asistencia(mario, trivia).
asistencia(mario, jenga).
asistencia(rene, jenga).
asistencia(melvin, smash).
asistencia(david, concierto).

% Recomendacion o sugerencia
recomendacion(Invitado, Actividad) :- 
    preferencia(Invitado, Tipo),
    actividad(Actividad, Tipo),
    \+ asistencia(Invitado, Actividad).