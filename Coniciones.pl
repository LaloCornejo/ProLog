plano:- write("Escribe la cordenada de X: "), read(X), 
        write("Escribe la cordenada de Y: "), read(Y), nl,
        write("Plano: "), write(X), write(", "), write(Y), nl, nl,
        cordenadas(X, Y).

cordenadas(X, Y):- X =:= 0, Y =:= 0, write("Origen").
cordenadas(X, Y):- X > 0, Y > 0, write("Primer cuadrante").
cordenadas(X, Y):- X < 0, Y > 0, write("Segundo cuadrante").
cordenadas(X, Y):- X < 0, Y < 0, write("Tercer cuadrante").
cordenadas(X, Y):- X > 0, Y < 0, write("Cuarto cuadrante").
cordenadas(X, Y):- X =:= 0, Y > 0, write("Ordenada (+)").
cordenadas(X, Y):- X =:= 0, Y < 0, write("Ordenada (-)").
cordenadas(X, Y):- X > 0, Y =:= 0, write("Abscisa (+)").
cordenadas(X, Y):- X < 0, Y =:= 0, write("Abscisa (-)").



% calificaciones
% rangos de calificaciones
% 0.0 - 6.99 -> N/A
% 7.0 - 7.99 -> Regulares
% 8.0 - 8.99 -> Buenas
% 9.0 - 10 -> Muy buenas

cali:- write("** CALIFICACIONES **"), nl, write("1. Calificaion: "), read(A),
        write("2. Calificaion: "), read(B),
        write("3. Calificaion: "), read(C), validar(A, B, C).

validar(A, B, C):- (A<0; A>10), (B<0; B>10), (C<0; C>10), write("Todo mal"), cali.

validar(A, B, C):- (A<0; A>10), (B >= 0 , B =< 10), (C >= 0 , C =< 10), write("1er mal"), nl, cali.
validar(A, B, C):- (A >= 0 , A =< 10), (B<0; B>10), (C >= 0 , C =< 10), write("2do mal"), nl, cali.
validar(A, B, C):- (A >= 0 , A =< 10), (B >= 0 , B =< 10), (C<0 , C>10), write("3ro mal"), nl, cali.

validar(A, B, C):- (A >= 0 , A =< 10), (B >= 0 , B =< 10), (C >= 0 , C =< 10), prom(A, B, C).
prom(A, B, C):- P is (A + B + C) / 3, write("Promedio: "), write(P), nl, nl, rangos(P).

rangos(P):- P >= 0, P < 7, write("N/A").
rangos(P):- P >= 7, P < 8, write("Regulares").
rangos(P):- P >= 8, P < 9, write("Buenas").
rangos(P):- P >= 9, P =< 10, write("Muy buenas"). 