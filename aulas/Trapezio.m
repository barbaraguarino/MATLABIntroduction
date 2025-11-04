%%%%%%%Este programa faz integracao numerica utilizando a Regra do
%%%%%%%Trapézio%%%%%%%%
clear;
a=-1;
b=5;
n=5e8; %Numero de subintervalos para discretizacao
h=(b-a)/n;
Integral=0;
%%%Estou integrando exp(x);limites de integracao=-1:5
Analitica=exp(5)-exp(-1);%Solucao analitica
tic
for ii=1:n
    Integral=Integral+((exp(a+(ii-1)*h)+exp(a+(ii)*h))*h)/2;
end
toc
%%%%%%Implementacao alternativa vetorizada%%%%%%%%%%%%%%%
tic
Vetfxk=exp(a:h:b-h);
Vetfxkplus=exp(a+h:h:b);
Integral2=sum(Vetfxk+Vetfxkplus)*h/2;
toc
