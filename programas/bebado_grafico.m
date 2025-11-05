clear;
clc;

MTamanho = 21;
P = [11, 11];
S = [21, 8];
Passos = 0;

Memoria = P;

% 1 = Para Esquerda
% 2 = Para Direita
% 3 = Para Cima
% 4 = Para Baixo

while P(1) ~= S(1) || P(2) ~= S(2)
  Passos = Passos + 1;
  caminho = randi([1,4]);
  % 1 = Para Esquerda
  if caminho == 1 && P(2) > 1
    P(2) = P(2) - 1;
    Memoria = [Memoria; P];
    % 2 = Para Direita
  elseif caminho == 2 && P(2) < MTamanho
    P(2) = P(2) + 1;
    Memoria = [Memoria; P];
    % 3 = Para Cima
  elseif caminho == 3 && P(1) > 1
    P(1) = P(1) - 1;
    Memoria = [Memoria; P];
    % 4 = Para Baixo
  elseif caminho == 4 && P(1) < MTamanho
    P(1) = P(1) + 1;
    Memoria = [Memoria; P];
  end

  fprintf('Possição Atual: [%d, %d]\n', P(1), P(2));

end

fprintf('\nO bebado deu %d para consegui sair.\n', Passos);

% Definindo os eixos do gráfico

x = Memoria(:, 2);
y = Memoria(:, 1);

% Criando o gráfico

figure;
plot(x, y, 'k');
hold;
plot(Memoria(1,2), Memoria(1,1), 'r-+');
plot(S(2), S(1), 'b-+');
hold;

clear MTamanho caminho Memoria x y P;
