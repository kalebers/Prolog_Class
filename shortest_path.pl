aresta(1,2).
aresta(1,3).
aresta(1,4).
aresta(1,5).
aresta(2,3).
aresta(2,6).
aresta(2,7).
aresta(3,4).
aresta(3,7).
aresta(3,9).
aresta(4,5).
aresta(4,9).
aresta(4,11).
aresta(5,11).
aresta(6,7).
aresta(6,12).
aresta(7,8).
aresta(7,9).
aresta(8,9).
aresta(8,12).
aresta(8,13).
aresta(8,14).
aresta(9,10).
aresta(9,14).
aresta(9,15).
aresta(10,11).
aresta(10,15).
aresta(10,16).
aresta(10,19).
aresta(12,13).
aresta(12,17).
aresta(13,14).
aresta(13,17).
aresta(13,18).
aresta(14,15).
aresta(14,18).
aresta(14,20).
aresta(15,16).
aresta(15,19).
aresta(16,19).
aresta(17,18).
aresta(18,20).
aresta(19,20).

connected(X,Y) :- aresta(X,Y) ; aresta(Y,X).
path(A,B,Path) :- ligacao(A,B,[A],Q), reverse(Q,Path).
ligacao(A,B,P,[B|P]) :- connected(A,B).
ligacao(A,B,Visited,Path) :-
       connected(A,C), C \== B,
       not( member(C,Visited)),
       ligacao(C,B,[C|Visited],Path).

shortest(A,B,Path,Length) :-
   setof([P,L],path(A,B,P,L),Set),
   Set = [_|_], 
   minimal(Set,[Path,Length]).
