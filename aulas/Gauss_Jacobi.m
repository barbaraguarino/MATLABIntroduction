clear;
A=[-20 2 -2 1;1 -8 1 1;1 3 -10 1;-1 0 5 -14];
b=[0;3;7;2];
tic
xa=[1;1;1;1]*1e6;%Chute inicial
tol=1e-6;
fro=1;%Variavel que guarda a norma de Frobenius
cont1=0;
nummaxit=50;
while fro>tol && cont1<nummaxit
    xn(1,1)=(b(1)-(A(1,2)*xa(2)+A(1,3)*xa(3)+A(1,4)*xa(4)))/A(1,1);
    xn(2,1)=(b(2)-(A(2,1)*xa(1)+A(2,3)*xa(3)+A(2,4)*xa(4)))/A(2,2);
    xn(3,1)=(b(3)-(A(3,1)*xa(1)+A(3,2)*xa(2)+A(3,4)*xa(4)))/A(3,3);
    xn(4,1)=(b(4)-(A(4,1)*xa(1)+A(4,2)*xa(2)+A(4,3)*xa(3)))/A(4,4);
%     pause
    fro=max(abs(xn-xa));
    xa=xn;
    cont1=cont1+1;
end
toc
%%%Implementacao com Vetorizacao%%%%%%%%%%%%%%%%%%%%%%%%
tic
D=diag(diag(A));
U=triu(A)-D;
L=tril(A)-D;
CJacobi=-D\(L+U);
gJacobi=D\b;
xavet=[1;1;1;1]*1e6;%Chute inicial
tolvet=1e-6;
frovet=1;%Variavel que guarda a norma de Frobenius
cont1vet=0;
nummaxitvet=50;

while frovet>tolvet && cont1vet<nummaxitvet
    xnvet=CJacobi*xavet+gJacobi;
%     pause
    frovet=max(abs(xnvet-xavet));
    xavet=xnvet;
    cont1vet=cont1vet+1;
end
toc

%O mesmo sistema, porém ordenado diferente,onde o Raio Espectral da Matriz
%C é maior que 1 (ou seja, não vai convergir)
A2=[1 3 -10 1;1 -8 1 1;-1 0 5 -14;-20 2 -2 1];
b2=[7;3;2;0];
C2=[0 -A2(1,2)/A2(1,1) -A2(1,3)/A2(1,1) -A2(1,4)/A2(1,1);-A2(2,1)/A2(2,2) 0 -A2(2,3)/A2(2,2) -A2(2,4)/A2(2,2)
    -A2(3,1)/A2(3,3) -A2(3,2)/A2(3,3) 0 -A2(3,4)/A2(3,3); -A2(4,1)/A2(4,4) -A2(4,2)/A2(4,4) -A2(4,3)/A2(4,4) 0];
xa2=[0.012938217465948
  -0.545600757004902
  -0.909237043713369
  -0.468508590336895];%Chute inicial
tol2=1e-6;
fro2=1;
cont2=0;
nummaxit2=50;
while fro2>tol2 && cont2<nummaxit2
    xn2(1,1)=(b2(1)-(A2(1,2)*xa2(2)+A2(1,3)*xa2(3)+A2(1,4)*xa2(4)))/A2(1,1);
    xn2(2,1)=(b2(2)-(A2(2,1)*xa2(1)+A2(2,3)*xa2(3)+A2(2,4)*xa2(4)))/A2(2,2);
    xn2(3,1)=(b2(3)-(A2(3,1)*xa2(1)+A2(3,2)*xa2(2)+A2(3,4)*xa2(4)))/A2(3,3);
    xn2(4,1)=(b2(4)-(A2(4,1)*xa2(1)+A2(4,2)*xa2(2)+A2(4,3)*xa2(3)))/A2(4,4);
%     pause
    fro2=max(abs(xn2-xa2));
    xa2=xn2;
    cont2=cont2+1;
end
