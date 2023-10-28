msg1:-write("Hello World OwO"), nl.
msg2:-write("in Prolog"), nl.
msg3:-write("message3").

% identificar el simbolo de un numero
id_num(X):- X=:=0,write("Es el valor 0 y no posee signo").
id_num(X):- X<0,write("Es el valor es negativo (-)").
id_num(X):- X>0,write("Es el valor es positivo (+)").


