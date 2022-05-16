pai(a,b).                    
pai(a,c).   
pai(b,d).   
pai(b,e).   
pai(c,f). 


filhos(X,Y):-pai(Y,X),!.
irmao(X,Y):-pai(Z,X),pai(Z,Y).
primo(X,Y):-irmao(A,B), pai(A,X), pai(B,Y), X\==Y.
neto(X,Y):-irmao(A,B), pai(X,A), pai(X,B), X\==Y.

