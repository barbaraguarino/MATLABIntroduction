clear;
load Sistema;
A2=A;
A3=A;
b2=b;
b3=b;
Solorig=A\b;
[numlin,numcol]=size(A);
% A
tic
for ii=1:numcol-1
    for jj=ii+1:numlin
        m=A(jj,ii)/A(ii,ii);
        b(jj)=b(jj)-m*b(ii);
        for kk=ii:numcol
            A(jj,kk)=A(jj,kk)-m*A(ii,kk);
        end
%         A
%         pause
    end
end
toc
Sol=A\b;

%%%Implementacao alternativa 1%%%%%%%%%%%%%%%%%%%%%%%%%
tic
for ii=1:numcol-1
    for jj=ii+1:numlin
        m=A2(jj,ii)/A2(ii,ii);
        b2(jj)=b2(jj)-m*b2(ii);
        A2(jj,ii:numcol)=A2(jj,ii:numcol)-m*A2(ii,ii:numcol);
    end
end
toc
Sol2=A2\b2;

%%%Implementacao alternativa 2%%%%%%%%%%%%%%%%%%%%%%%%%
tic
for ii=1:numcol-1
    for jj=ii+1:numlin
        m=A3(jj,ii)/A3(ii,ii);
        b3(jj)=b3(jj)-m*b3(ii);
        A3(jj,:)=A3(jj,:)-m*A3(ii,:);
    end
end
toc
Sol3=A3\b3;
