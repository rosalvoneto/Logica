campeao(guga).
campeao(melligeni).
campeao(navratilova).
campeao(tina).

homem(guga).
homem(melligeni).
homem(andre).

mulher(navratilova).
tina(mulher).

filho(guga, milton).

maisvelho(guga, melligeni).
maisvelho(melligeni, andre).

nasceuantes(navratilova, guga).
nasceuantes(navratilova, tina).
nasceuantes(melligeni, tina).

maisvelhoRegra(X, Y) :- maisvelho(X, Y); nasceuantes(X, Y).
maisvelhoRegra(X, Y) :- (maisvelho(X, Z); nasceuantes(X, Z)), maisvelhoRegra(Z, Y).

%Regras
%maisvelhoRegra(X, tina), mulher(X).
%campeao(X), maisvelhoRegra(guga, X), homem(X).
%maisvelhoRegra(melligeni, andre).
