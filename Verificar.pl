id_num:-tab(10), write("Ingres el valor a comprobar: "),read(X),
        tab(10), write("Ingresa el multiplicador a comprobar: "), read(Y), multiplo2(X, Y).

multiplo2(X, Y):-(X =:= 0) -> tab(10), write("El valor es 0");
                  (Y =:= 0) -> tab(10), write("El valor del multiplicador es 0");
            (X mod Y =:= 0) -> tab(10), write("El valor es multiplo");
            (X mod Y =\= 0) -> tab(10), write("El valor no es multiplo").