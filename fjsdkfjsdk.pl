%hechos
 marca_pc(asus).
 marca_pc(hp).
 marca_pc(toshiba).
 marca_pc(gateway).
 marca_pc(acer).
 marca_pc(dell).
 marca_pc(ig).
 marca_pc(lenovo).
 marca_pc(hawei).
 marca_pc(mac_air).
 marca_pc(mac_pro).
 marca_pc(imac).
 marca_pc(any_vaio).
 marca_pc(xiaomi).

 %atomo_solo_un_cosa_variable



 %relaciones_y_operaciones_aritmeticas

j_ganados(juan, 7).
j_ganados(susana, 6).
j_ganados(pedro, 2).
j_ganados(rosa, 5).
j_jugados(juan, 13).
j_jugados(susana, 7).
j_jugados(pedro, 3).
j_jugados(rosa, 10).


porcentaje(X, Y):- j_ganados(X, P), j_jugados(X, Q),
Z is (P / Q ) * 100, write(X), tab(3), Z1 is floor(Z), write(Y), tab(3), write(Z1), write("%"), nl, fail.


total_jugados:- j_jugados(juan, S), j_jugados(susana, T), j_jugados(pedro, Q), j_jugados(rosa, P), Tot is S+T+Q+P, 
write("El total de juegos jugados por todos los jugadores es: "), write(Tot).

total_ganados:- j_ganados(juan, S), j_ganados(susana, T), j_ganados(pedro, Q), j_ganados(rosa, P), Tot is S+T+Q+P,
write("El total de juegos ganadados por toos los jugadores es: "), write(Tot).

%base de conocimiento
%relaciones-telefonos
precio(iphone11, 12500).
precio(iphone11pro, 20000).
precio(nuawei_mate_20, 17800).
precio(samsung_galaxynote10, 28000).
precio(hydrogen_one, 13000).
precio(motorola_dsjvn, 11000).
precio(huawei_y6, 3500).
precio(alcatel, 1500).
precio(xiaomi_note7, 3700).
precio(oxxo_tel_azumi, 380).
precio(google_pixel, 18000).
precio(lanix_x650, 1800).

% accesorios
prec_acc(airpods, 4000).
prec_acc(iwatch, 9000).
prec_acc(mi_hand, 800).
prec_acc(bose, 10000).
prec_acc(jbl, 2000).
prec_acc(htc_vive, 14000).
prec_acc(alexa, 8000).
prec_acc(homepod, 10000).
prec_acc(g_shock, 1400).
prec_acc(selfie_stick, 30).
prec_acc(fiio, 5000).
prec_acc(magicmouse, 3000).
prec_acc(gladius, 2700).
prec_acc(apple_pencil, 1500).
prec_acc(smart_light_panel, 2800).
prec_acc(mini_dron, 2000).
prec_acc(dron, 24000).
prec_acc(gopro, 7500).
prec_acc(camara_360, 16000).
prec_acc(video_proyector_instashare, 400).
prec_acc(dualshock_conrtol_pad, 1200).
prec_acc(powerbank, 1500).
prec_acc(isnt_polaroid_printer, 2000).
prec_acc(wireless_char, 1200).


rango(A, B):- prec_acc(X, Y), Y >= A, Y =< B, write(X), tab(3), write(Y), nl, fail.