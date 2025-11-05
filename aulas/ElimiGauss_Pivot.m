clear;
clc;

load Sistema;

A2=A;
A3=A;
b2=b;
b3=b;
Solorig=A\b;
[numlin,numcol]=size(A);


for ii=1:numcol-1

    [posi]=Acha_Pivot(A(:,ii),numlin,ii);

    if posi~=ii
        vetaux=A(ii,:);
        A(ii,:)=A(posi,:);
        A(posi,:)=vetaux;
        aux=b(ii);
        b(ii)=b(posi);
        b(posi)=aux;
    end

    for jj=ii+1:numlin
        m=A(jj,ii)/A(ii,ii);
        b(jj)=b(jj)-m*b(ii);

        for kk=ii:numcol
            A(jj,kk)=A(jj,kk)-m*A(ii,kk);
        end
    end
end

Sol=A\b;
