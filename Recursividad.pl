pedir:-write("Ingrese 1er valor(Menor): "), read(M),
        write("Ingrese 2do valor(Mayor): "), read(N),
        lista(M, N).

lista(M, N):- M=<N, tab(10), write(M), nl, 
                NewM is M + 1, lista(NewM, N).


pedirval:-write("Escribe el valor superior: "), read(M), 
                write("Escribe el valor inferior: "), read(N),
                sucesion(M, N).

sucesion(M, N):- M >= N, write("         "), Nvalor is M - 2, write(M), 
                sucesion(Nvalor, N).


tabla:- write("Ingrese el valor de la tabla: "), read(X),
        write("Ingrese el valor de inicio: "), read(Y), 
        write("Ingrese el valor de fin: "), read(Z), veri(X, Y, Z).

veri(X, Y, Z):- Y mod X =\= 0 -> write("El valor de inicio no es multiplo."), nl, tabla;
                Z mod X =\= 0 -> write("El valor del final no es multiplo."), nl, tabla;
                                                                mutipli(X, Y, Z).

mutipli(X, Y, Z):- Y < Z, Resultado is Y + X, write(Resultado), nl, mutipli(X, Resultado, Z).
