clear;
Aoriginal=[1 -4 -10 0;8 2 -3 1;5 9 -3 3;8 -1 8 -10];
A=[8 2 -3 1;5 9 -3 3;1 -4 -10 0;8 -1 8 -10];
b=[1;7;3;2];
CJacobi=[0 -A(1,2)/A(1,1) -A(1,3)/A(1,1) -A(1,4)/A(1,1);-A(2,1)/A(2,2) 0 -A(2,3)/A(2,2) -A(2,4)/A(2,2)
    -A(3,1)/A(3,3) -A(3,2)/A(3,3) 0 -A(3,4)/A(3,3); -A(4,1)/A(4,4) -A(4,2)/A(4,4) -A(4,3)/A(4,4) 0];
%%%Calculo do C do Gauss-Seidel%%%%%
D=diag(diag(A));
U=triu(A)-diag(diag(A));
L=tril(A)-diag(diag(A));
CSeidel=(D+L)\U;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Calculo do C do Gauss-Seidel com a Matriz A original
Doriginal=diag(diag(Aoriginal));
Uoriginal=triu(Aoriginal)-diag(diag(Aoriginal));
Loriginal=tril(Aoriginal)-diag(diag(Aoriginal));
CSeideloriginal=(Doriginal+Loriginal)\Uoriginal;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xa=[1;-1;2;3];
lxa=length(xa);
xn=zeros(lxa,1);
tol=1e-6;
fro=1;
frorelat=1;
Residuo=1;
cont1=0;
nummaxit=50;
while (fro>tol||frorelat>tol||Residuo>tol) && cont1<nummaxit
    xn(1)=(b(1)-(A(1,2)*xa(2)+A(1,3)*xa(3)+A(1,4)*xa(4)))/A(1,1);
    xn(2)=(b(2)-(A(2,1)*xn(1)+A(2,3)*xa(3)+A(2,4)*xa(4)))/A(2,2);
    xn(3)=(b(3)-(A(3,1)*xn(1)+A(3,2)*xn(2)+A(3,4)*xa(4)))/A(3,3);
    xn(4)=(b(4)-(A(4,1)*xn(1)+A(4,2)*xn(2)+A(4,3)*xn(3)))/A(4,4);
    fro=max(abs(xn-xa));
    frorelat=max(abs(xn-xa))/max(abs(xn));
    Residuo=max(abs(A*xn-b));
    xa=xn;
    cont1=cont1+1;
end
