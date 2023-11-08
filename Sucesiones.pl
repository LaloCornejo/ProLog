pedir:- write("Ingrese valor de N final: "), read(Nf), suce(0, Nf).

suce(N, Nf):- N =< Nf, EleN is 2**N,  write(EleN), nl, N1 is N + 1, nl, suce(N1, Nf).

pedir5:- write("Ingrese valor de sucesion: "), read(X),
        write("Ingrese el valor inicial: "), read(Y), suce5(X, Y).

suce5(X, Y):- Y > 0, write(Y), nl, Y1 is Y - X, suce5(X, Y1).


pedir3:-read(Y), suce3(3, Y, 1).

suce3(X, Y, Z):- Z =< Y, X1 is X * Z, write(X1), nl,  Z1 is Z + 1 , suce3(X, Y, Z1).