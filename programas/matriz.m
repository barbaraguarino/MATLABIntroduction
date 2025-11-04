clear;
clc;

% 1. Cria a matriz A
A = randi(9, 5); % Matriz 5x5 com inteiros aleatórios de 1 a 9

% 2. Exibe a original
disp('Matriz Original A:');
disp(A);

% 3. Cria a cópia
B = A;

% 4. Substitui a diagonal principal
% Abordagem com laço (como em Manipula_Matriz.m)
for ii = 1:5
    B(ii, ii) = 0;
end
disp('Matriz B (diagonal zerada com laço):');
disp(B);

% Abordagem vetorizada (a melhor forma!)
B_vetorizado = A - diag(diag(A)); % Extrai a diagonal, e subtrai ela da matriz
disp('Matriz B (diagonal zerada com diag()):');
disp(B_vetorizado);

% 5. Cria C com linhas ímpares
% A sintaxe é (inicio:passo:fim, todas_as_colunas)
C = A(1:2:end, :);
disp('Matriz C (Linhas ímpares de A):');
disp(C);

% 6. Cria vetor com a quarta coluna
coluna4 = A(:, 4); % (todas_as_linhas, coluna 4)
disp('Vetor da Coluna 4:');
disp(coluna4);

% 7. Substitui a segunda linha
A(2, :) = zeros(1, 5); % (linha 2, todas_as_colunas)
disp('Matriz A (com Linha 2 zerada):');
disp(A);
