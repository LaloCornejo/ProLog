cls:-write('\33\[2]').

id_num:-cls, nl, nl, 
    tab(10), 
    write("Ingressa el valor a validar com multiplo de 3: "), 
    read(X), multiplo3(X).

multiplo3(X):- (X =:=0) -> tab(10), write("Cero no es mulitplo sw 3");
                (X mod 3 =:= 0) -> tab(10), write("Es multiplo de 3");
                (X mod 3 =\= 0) -> tab(10), write("No es multiplo de 3").