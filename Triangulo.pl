trian:-write("Ingrese A: "), read(A), 
        write("Ingrese B: "), read(B),
        write("Ingrese C: "), read(C), veri(A, B, C).

veri(A, B, C):- A =< 0, B > 0 , C > 0 -> write("Valor A es incorrecto"), nl, trian;
                A > 0, B =< 0, C > 0 -> write("Valor B es incorrecto"), nl,  trian;
                A > 0, B > 0, C =< 0 -> write("Valor C es incorrecto"), nl, trian;
                                                                    calc(A, B, C).


calc(A, B, C):- write("Semioerimetro: "), Se is (A + B + C) / 2, write(Se), nl,
                write("Area: "), Ar is sqrt(Se*(Se-A)*(Se-B)*(Se-C)), write(Ar).
