%kalebe rodrigues szlachta
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
%split_lists([1,-3,22,-111,44],N,P).
split_list([], []) --> [].
split_list([X|C], N) --> [X], { X >= 0 }, split_list(C, N).
split_list(P, [X|C]) --> [X], { X < 0 }, split_list(P, C).

split_lists(L, P, N) :-
    phrase(split_list(P, N), L).

%4

numbers_cut(X):-(X>0, write("X positivo")); 
    (X < 0, write("X negativo")), (X = 0, write("X é 0")),!.

%5
euclides_alg(A, 0, Z) :- Z is A.
euclides_alg(A, B, Z) :- B > A, euclides_alg(B, A, Z).
euclides_alg(A, B, Z) :- X is A mod B, euclides_alg(B, X, Z).
mdc(A, B, Z) :- euclides_alg(A, B, Z).








