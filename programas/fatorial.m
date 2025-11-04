clear;
clc;

% 1. Pede o número ao usuário
N = input('Digite um número inteiro para calcular o fatorial: ');

% 2. Com Laço 'for' (baseado em Somas.m)
Fatorial_for = 1; % O acumulador começa em 1 (elemento neutro da multiplicação)
for ii = 1:N
    Fatorial_for = Fatorial_for * ii;
end
fprintf('O fatorial (com FOR) de %d é: %d\n', N, Fatorial_for);

% 3. Com Laço 'while'
Fatorial_while = 1;
contador = 1; % Variável de controle separada
while contador <= N
    Fatorial_while = Fatorial_while * contador;
    contador = contador + 1; % Incrementa o contador manualmente
end
fprintf('O fatorial (com WHILE) de %d é: %d\n', N, Fatorial_while);

% 4. Forma vetorizada (Bônus)
% Fatorial_vet = prod(1:N);
% fprintf('O fatorial (vetorizado com PROD) é: %d\n', Fatorial_vet);
