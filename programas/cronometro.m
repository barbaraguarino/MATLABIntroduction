clear;
clc;

N = 5e3;

fprintf('Iniciando testes de performance com N = %d\n\n', N);

% ---- Abrodagem 1: Laço Lente ----
fprintf('Abordagem 1: Laço Lente \n');
tic;
v1= [];
for ii = 1:N
  v1(ii) = ii;
end
toc;
clear v1;

% ---- Abordagem 2: Laço Rápido com zeros() ----
fprintf('Abordagem 2: Laço Rápido com zeros()\n');
tic;
v2 = zeros(1, N);
for ii = 1:N
  v2(ii) = ii;
end
toc;
clear v2;

% ---- Abordagem 3: Vetorizando ----
fprintf('Abordagem 3: Vetorizando\n');
tic;
v3 = 1:N;
toc;
clear v3;
