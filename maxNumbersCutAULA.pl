%ex:max(5,5).
max(X,Y):-(X=Y,write('iguais'); 
                            (X>Y,(Z is X, write(Z)));
                            (Z is Y, write(Z))).

%maior/3
%maior(X,Y,max)

%ex: maior(7,6,X).
maior(X,Y,X):-X>=Y.
maior(X,Y,Y):-X<Y.


%cut é representado por um !. Serve para determinar o fim do processamento, quando convém ao programador e para diminuir o custo computacional.

%usando cut:

maior1(X,Y,X):-X>=Y,!.
maior1(X,Y,Y):-X<Y.
    

%regras/fatos
%ex:cut_a(X).
%cut_b(X).
data(um).
data(dois).
data(tres).

cut_a(X):-data(X).
cut_a(X):-('fim').

cut_b(X):-data(X),!.
cut_b(X):-('fim').

%O cut é um predicado pre deginido do prolog e, como tal, pode ser usado a qualquer momento, em qualquer regra ou querie.

%regras/fatos
%ex: mymember(1,[1,2,3,1,1]).
mymember(X,[X|_]).
mymember(X,[_|Y)]:-mymember(X,Y).

member_cut(X,[X|_]):-!;
    member_cut(X,[_|Y]):-member_cut(X,Y).
         
         
