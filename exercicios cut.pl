%1
homem(albert).
homem(bob).
homem(edward).
mulher(alice).
milher(victoria).
progenitor(albert,edward).%albert é pai de edward
progenitor(victoria,edward).
progenitor(albert,alice).
progenitor(victoria,alice).
progenitor(albert,bob).
progenitor(victoria,bob).

%filhos(alice,bob).
filhos(X,Y):-progenitor(Y,X),!.
%irmao(alice, edward).
irmao(X,Y):-progenitor(Z,X),progenitor(Z,Y).
%OBS: esse exercicio não contem primos

%2
numbers(X):-(X>0, write("X positivo")); 
    (X < 0, write("X negativo")), (X = 0, write("X é 0")).
 

%3
%split([1,-3,22,-111,44],N,P).
split([], []) --> [].
split([X|T], N) --> [X], { X >= 0 }, split(T, N).
split(P, [X|T]) --> [X], { X < 0 }, split(P, T).

split(L, P, N) :-
    phrase(split(P, N), L).

%4

numbers_cut(X):-(X>0, write("X positivo")); 
    (X < 0, write("X negativo")), (X = 0, write("X é 0")),!.

%5









