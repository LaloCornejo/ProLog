/* Creacion de reglas conoperaciones (Calculo) */

% Obtener el area de un circulo

pedir:-write("Ingresa el valor del radio: "),
    read(R),
    areaCirc(R).


% validar
areaCirc(R):- R=<0, write("El valor es incorrecto -_-"), nl, nl, pedir.

areaCirc(R):- R>0, nl, Ar is pi*(R^2),
    write("El area con Radio: "), write(R), write(" es: "), write(Ar), nl.

%-------------------------------------------------------------------------

% volumen de una esfera

pedirE:-write("*** Volumen de una esfera ***"), nl, write("Ingresa el radio de la esfera: "),
    read(X), volumenEsfe(X).

% validar
volumenEsfe(X):- X =< 0, write("El valor es incorrecto -_- "), nl, nl, pedirE.

volumenEsfe(X):- X>0, nl, Vol is 4/3 * pi * (X^2), write("El volumen de la esfera con area: "), write(X), write(" es: "), write(Vol), nl.


%-------------------------------------------------------------------------

% Conversion de grados a radianes
% Rad = *grados*pi/180

convers:- write("Ingrese el los grados a convertitr: "), read(Y), converGrRad(Y).

% validar
converGrRad(Y):- Y < 0, write("El valor ingresado es incorrecto -_-"), nl, nl, convers.

converGrRad(Y):- Y >= 0, Rad is Y*(pi/180), write("El valor en Radianes es: "), write(Rad), nl,
    S is sin(Rad), write("El seno es: "), write(S), nl,
    C is cos(Rad), write("El cos es: "), write(C), nl,
    T is tan(Rad), write("El tan es: "), write(T), nl.

% Conversion Seno, Cos, Tan 
% Sen =