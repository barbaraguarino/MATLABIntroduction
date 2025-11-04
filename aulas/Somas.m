clear
limitesuperior=100;
%Soma todos os numeros de 0 até limite superior
Soma=0;
for ii=1:limitesuperior
Soma=Soma+ii;
%     Soma+=ii; Forma alternativa (da galera que escova bit) do comando acima
end

%%%%Forma de Gauss%%%%%%%%%%%%%%
Soma2=(limitesuperior+1)*(limitesuperior)/2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Soma todos os numeros PARES de 0 até limite superior
Soma3=0;
for ii=2:2:limitesuperior
Soma3=Soma3+ii;
end

%Soma todos os numeros IMPARES de 0 até limite superior
Soma4=0;
for ii=1:2:limitesuperior
Soma4=Soma4+ii;
end

%Multiplica todos os numeros de 1 até limite superior (É o fatorial!)
Fatorial=1;
for ii=1:limitesuperior
Fatorial=Fatorial*ii;
end
