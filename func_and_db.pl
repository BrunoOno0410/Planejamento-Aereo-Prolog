%Bruno Giordano Ono

%BANCO DE DADOS
voo(sao_paulo,mexico,em0,6:00,(mesmo,20:10),2,emirates,[seg,qua,sab]).
voo(sao_paulo,mexico,km0,12:30,(mesmo,20:20),0,klm,[ter,qui]).
voo(sao_paulo,mexico,tp0,3:00,(mesmo,10:00),1,tap,[seg,qui,dom]).

voo(sao_paulo,nova_york,em1,9:15,(mesmo,19:10),0,emirates,[seg,sex]).
voo(sao_paulo,nova_york,km1,15:00,(dia_seguinte,1:10),1,klm,[ter,qui,dom]).
voo(sao_paulo,nova_york,tp1,20:30,(dia_seguinte,10:20),3,tap,[qua,sab]).

voo(sao_paulo,lisboa,em2,13:00,(mesmo,23:10),0,emirates,[ter,qui,sab]).
voo(sao_paulo,liboa,km2,18:20,(dia_seguinte,4:40),1,klm,[seg,sex,dom]).
voo(sao_paulo,lisboa,tp2,7:50,(mesmo,20:40),2,tap,[qua,sab]).

voo(sao_paulo,madrid,em3,20:00,(dia_seguinte,9:40),1,emirates,[dom,qui]).
voo(sao_paulo,madrid,km3,8:00,(mesmo,18:50),0,klm,[seg,qua,sab]).
voo(sao_paulo,madrid,tp3,15:10,(dia_seguinte,10:30),2,tap,[ter,sex]).

voo(sao_paulo,londres,em4,16:00,(dia_seguinte,7:10),3,emirates,[seg,ter,sex]).
voo(sao_paulo,londres,km4,5:30,(mesmo,16:40),1,klm,[qua,sab]).
voo(sao_paulo,londres,tp4,22:50,(dia_seguinte,12:20),2,tap,[seg,qui,dom]).

voo(sao_paulo,paris,em5,20:30,(dia_seguinte,9:10),1,emirates,[seg,qua,sab]).
voo(sao_paulo,paris,km5,12:00,(mesmo,23:20),0,klm,[ter,sab,dom]).
voo(sao_paulo,paris,tp5,7:10,(mesmo,22:20),2,tap,[seg,qui]).

voo(mexico,nova_york,em6,8:10,(mesmo,9:20),0,emirates,[seg,qua,sex,dom]).
voo(mexico,nova_york,km6,12:00,(mesmo,12:55),0,klm,[seg,ter,qui]).
voo(mexico,nova_york,tp6,20:30,(mesmo,22:00),1,tap,[ter,sex,sab]).

voo(mexico,madrid,em7,6:20,(mesmo,16:30),1,emirates,[seg,qui,sab]).
voo(mexico,madrid,km7,10:20,(mesmo,19:10),0,klm,[ter,dom]).
voo(mexico,madrid,tp7,20:10,(dia_seguinte,7:50),2,tap,[seg,qua,dom]).

voo(nova_york,londres,em8,8:20,(mesmo,16:00),2,emirates,[seg,sex,sab]).
voo(nova_york,londres,km8,11:15,(mesmo,18:10),1,klm,[seg,qua,dom]).
voo(nova_york,londres,tp8,19:00,(dia_seguinte,1:50),0,tap,[ter,qui,sex]).

voo(londres,lisboa,em9,7:15,(mesmo,9:55),0,emirates,[ter,qui,dom]).
voo(londres,lisboa,km9,21:30,(mesmo,23:40),1,klm,[seg,sex,sab]).
voo(londres,lisboa,tp9,14:40,(mesmo,17:20),0,tap,[seg,qua,sex]).

voo(londres,paris,em10,13:10,(mesmo,14:20),0,emirates,[seg,ter,sab]).
voo(londres,paris,km10,6:35,(mesmo,7:55),1,klm,[ter,qui,dom]).
voo(londres,paris,tp10,19:40,(mesmo,21:00),0,tap,[seg,qua,sex]).

voo(londres,estocolmo,em11,22:10,(dia_seguinte,1:50),1,emirates,[ter,qui,sex]).
voo(londres,estocolmo,km11,15:35,(mesmo,20:55),2,klm,[seg,qui,sab]).
voo(londres,estocolmo,tp11,10:00,(mesmo,12:10),0,tap,[seg,qua,dom]).

voo(madrid,paris,em12,8:20,(mesmo,10:55),1,emirates,[ter,qua,sab]).
voo(madrid,paris,km12,12:30,(mesmo,14:35),0,klm,[seg,qua,sex]).
voo(madrid,paris,tp12,20:00,(mesmo,23:35),2,tap,[ter,qui,dom]).

voo(madrid,roma,em13,4:20,(mesmo,6:40),0,emirates,[seg,qua,qui]).
voo(madrid,roma,km13,11:10,(mesmo,16:35),2,klm,[ter,sex,sab]).
voo(madrid,roma,tp13,17:40,(mesmo,18:50),1,tap,[seg,qua,dom]).

voo(madrid,frankfurt,em14,21:10,(mesmo,23:35),1,emirates,[qui,sab,dom]).
voo(madrid,frankfurt,km14,13:25,(mesmo,17:10),2,klm,[seg,qua,sab]).
voo(madrid,frankfurt,tp14,5:10,(mesmo,8:15),0,tap,[ter,qui,sex]).

voo(frankfurt,estocolmo,em15,20:20,(mesmo,23:30),1,emirates,[ter,qui,sab]).
voo(frankfurt,estocolmo,km15,6:00,(mesmo,8:05),0,klm,[seg,sex,dom]).
voo(frankfurt,estocolmo,tp15,15:40,(mesmo,19:50),2,tap,[qua,sab]).

voo(frankfurt,roma,em16,19:40,(mesmo,22:15),0,emirates, [ter,sex]).
voo(frankfurt,roma,km16,14:10,(mesmo,18:35),0,klm,[qua,sab]).
voo(frankfurt,roma,tp16,7:30,(mesmo,9:25),0,tap,[seg,qui,dom]).

%FUNC 1 
voo_direto(Origem, Destino, Companhia, DiaSemana, Horario):-
    voo(Origem, Destino, _, Horario, _, 0, Companhia, L),
   	memberchk(DiaSemana, L).

%FUNC 2
filtra_voo_dia_semana(Origem, Destino, DiaSemana, HorarioSaida, HorarioChegada, Companhia):-
    voo(Origem, Destino, _, HorarioSaida, (_, HorarioChegada), _, Companhia, L),
    memberchk(DiaSemana, L),
    nl, write('Dia: '),
    write(DiaSemana),
    nl, write('Horario: '),
    write(HorarioSaida),
    write(' ate '),
    write(HorarioChegada),
    nl, write('Companhia: '),
    write(Companhia).

%FUNC 3 (Roteiro)
%OBS: É retornado lista de vôos em [] por ordem, [[ sendo para um roteiro, mesmo que pegue mais de um voo
acha_voo(Codigo, Origem, Destino, HorarioSaida, HorarioChegada):-
	voo(Origem, Destino, Codigo, HorarioSaida,(_, HorarioChegada), _, _, _).

membro(X,[X|_]):- !.
membro(X,[_|T]) :- membro(X,T).

rota(Origem, Destino, [[Codigo]], Visitado):-
    acha_voo(Codigo, Origem, Destino, _, _),
    not(membro(Destino,Visitado)).

rota(Origem, Destino, [[Codigo]|Rota], Visitado):-
    acha_voo(Codigo, Origem, Trajeto, _, _),
    not(membro(Trajeto,Visitado)),
    rota(Trajeto, Destino, Rota, [Trajeto|Visitado]).

planoRota(Origem, Destino, Rota):- 
    rota(Origem, Destino, Rota, [Origem]).

roteiro(Origem, Destino, ListaRota):-
	findall(Rota, planoRota(Origem, Destino, Rota), ListaRota).
