man(voeneg).
man(ratibor).
man(boguslav).
man(velerad).
man(duhovlad).
man(svyatoslav).
man(dobrozhir).
man(bogomil).
man(zlatomir).

woman(goluba).
woman(lubomila).
woman(bratislava).
woman(veslava).
woman(zhdana).
woman(bozhedara).
woman(broneslava).
woman(veselina).
woman(zdislava).

parent(voeneg,ratibor).
parent(voeneg,bratislava).
parent(voeneg,velerad).
parent(voeneg,zhdana).

parent(goluba,ratibor).
parent(goluba,bratislava).
parent(goluba,velerad).
parent(goluba,zhdana).

parent(ratibor,svyatoslav).
parent(ratibor,dobrozhir).
parent(lubomila,svyatoslav).
parent(lubomila,dobrozhir).

parent(boguslav,bogomil).
parent(boguslav,bozhedara).
parent(bratislava,bogomil).
parent(bratislava,bozhedara).

parent(velerad,broneslava).
parent(velerad,veselina).
parent(veslava,broneslava).
parent(veslava,veselina).

parent(duhovlad,zdislava).
parent(duhovlad,zlatomir).
parent(zhdana,zdislava).
parent(zhdana,zlatomir).

%11
daughter(X):-parent(Y,X),woman(X),write(X),!.
daughter(X,Y):- parent(Y,X),woman(X).

%12
wife(X,Y):-parent(X,Z),parent(Y,Z).
wife(X):-parent(X,Z),parent(Y,Z),woman(Y),write(Y),!.

%13
grand_ma(X,Y):-parent(X,Z),parent(Z,Y),woman(X).
grand_ma(X):-parent(X,Z),parent(Z,Y),woman(X),write(X),!.

%14
grand_ma_and_da(X,Y):-woman(X),woman(Y);parent(X,Z),parent(Z,Y),parent(W,X),parent(Y,W).











