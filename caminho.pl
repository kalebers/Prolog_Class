conectado(1,2). 
conectado(3,4). 
conectado(5,6). 
conectado(7,8). 
conectado(9,10). 
conectado(12,13). 
conectado(13,14). 
conectado(15,16). 
conectado(17,18). 
conectado(19,20).
conectado(4,1). 
conectado(6,3). 
conectado(4,7). 
conectado(6,11). 
conectado(14,9). 
conectado(11,15). 
conectado(16,12). 
conectado(14,17). 
conectado(16,19). 

connected(X,Y) :- conectado(X,Y) ; conectado(Y,X).
path(A,B,Path) :- ligacao(A,B,[A],Q), reverse(Q,Path).
ligacao(A,B,P,[B|P]) :- connected(A,B).
ligacao(A,B,Visited,Path) :-
       connected(A,C), C \== B,
       not( member(C,Visited)),
       ligacao(C,B,[C|Visited],Path). 

% fahrenheit para celsius
fahrenheit_celsius(C, F) :- F is ((C * (9 / 5)) + 32 ).
% clsius para fahrenheit
celsius_fahrenheit(F,C) :- C is ((F-30)/2).