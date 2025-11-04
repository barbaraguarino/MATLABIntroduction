clear
Numlin=10;
Numcol=14;
Saida=[3,14];
Posicao=[5,2];
numpassos=0;
while Posicao(1) ~= Saida(1) || Posicao(2) ~= Saida(2)
    numpassos=numpassos+1;
    dir=randi([0,3]);
    if dir==0 && Posicao(2)>0
        Posicao(2)=Posicao(2)-1;
    elseif dir==1 && Posicao(1)>0
        Posicao(1)=Posicao(1)-1;
    elseif dir==2 && Posicao(2)<Numcol
        Posicao(2)=Posicao(2)+1;
    elseif dir==3 && Posicao(1)<Numlin
        Posicao(1)=Posicao(1)+1;
    end
end
