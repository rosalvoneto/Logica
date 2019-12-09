%Fatos
progenitor(jose, joao).
progenitor(jose, ana).
progenitor(maria, joao).
progenitor(maria, ana).
progenitor(joao, mario).
progenitor(ana, helena).
progenitor(ana, joana).
progenitor(mario, carlos).
progenitor(helena, carlos).

masculino(jose).
masculino(joao).
masculino(mario).
masculino(carlos).


feminino(maria).
feminino(ana).
feminino(helena).
feminino(joana).

%Regras

pai(X, Y) :- progenitor(X, Y), masculino(X).
mae(X, Y) :- progenitor(X, Y), feminino(X).
avo(X, Y) :- progenitor(X, Z), progenitor(Z, Y), masculino(X).
irma(X, Y) :- progenitor(Z, X), progenitor(Z, Y), feminino(X), X\==Y.
irmao(X, Y) :- progenitor(Z, X), progenitor(Z, Y), masculino(X), X\==Y.



