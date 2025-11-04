clear;
A=[1 2 3 4;-5 6 7 90;-3 4 60 32;80 82 83 87];
[Nlinhas,Ncolunas]=size(A);
%%%Este programa coloca o numero 1 em todas as entradas da diagonal
%%%principal da Matriz A%%%%%%%%%%%%%%%%%%%%%%%
for ii=1:Nlinhas
    for jj=1:Ncolunas
        if ii==jj
            A(ii,jj)=1;
        end
    end
end
%%%Maneira alternativa gastando menos tempo%%%%%%%%
A2=[1 2 3 4;-5 6 7 90;-3 4 60 32;80 82 83 87];
for ii=1:Nlinhas
    A2(ii,ii)=1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%2a. Maneira alternativa gastando menos tempo%%%%%%%%
A3=[1 2 3 4;-5 6 7 90;-3 4 60 32;80 82 83 87];
A3=A3-diag(diag(A3)-1);
