# Ideias de Programas

## Programa 01: Cálculo da Área com a Regra do Trapézio

Implementar a regra do trapézio para calcular a integral definida de uma função matemática. A regra do trapézio é um método numérico para aproximar o valor de uma integral, que corresponde à área sob a curva de uma função.

**Enunciado**: Crie um scrip em MATLAB que calcule a integral da função f(x)=x² * sin(x) no intervalo [0, π]. 

**Requisitos:**
1. O script deve primeiro plotar o gráfico da função no intervalo especificado para que você possa visualizar a área que será calculada. 
2. Você deverá implementar a regra do trapézio para aproximar a área. A fórmula para um único trapézio (um intervalo) é: Área ≈ (h/2) * (f(x_i) + f(x_{i+1})), onde h é a largura do intervalo. 
3. O programa deve permitir que o usuário defina o número de trapézios (ou subintervalos) a serem usados na aproximação. 
4. Calcule e exiba o valor aproximado da integral para 10, 100 e 1000 subintervalos. 
5. Compare os resultados e observe como a precisão da aproximação aumenta com o número de subintervalos.

## Programa 02: A Caminhada do Bêbado
Simular um "passeio aleatório" (random walk) em duas dimensões para modelar o movimento de um bêbado em uma grade e determinar quantos passos ele leva para encontrar a saída.

**Enunciado:** Crie uma simulação em MATLAB que modele a caminhada de um bêbado em uma grade quadrada de NxN. A simulação deve seguir as seguintes regras:

1. Defina o tamanho da grade (por exemplo, N = 21, resultando em uma grade de 21x21). 
2. Defina a posição inicial do bêbado no centro da grade. 
3. Defina a posição da saída em um dos cantos da grade (por exemplo, na coordenada (N, N)). 
4. A cada passo, o bêbado pode se mover aleatoriamente para uma das quatro posições vizinhas: para cima, para baixo, para a esquerda ou para a direita. Ele não pode se mover na diagonal. 
5. O bêbado não pode sair dos limites da grade. Se um passo aleatório o levar para fora da grade, ele permanece na mesma posição por aquela rodada (considerado um passo "perdido"). 
6. A simulação termina quando o bêbado alcança a coordenada de saída. 
7. Ao final da simulação, o programa deve exibir o número total de passos que o bêbado deu.
8. (Opcional) Gere um gráfico que mostre o caminho percorrido pelo bêbado, desde a posição inicial até a saída.

## Programa 03: Comparando o Tempo de Execução

Demonstrar a eficiência da vetorização em MATLAB, comparando o tempo de execução de uma operação matemática realizada com um laço de repetição (for) versus a mesma operação realizada de forma vetorizada.

**Enunciado:** Crie um script que realize a seguinte tarefa: dado dois vetores grandes, A e B, calcule um terceiro vetor, C, onde cada elemento C(i) é o resultado da operação C(i) = (A(i)^2) * sqrt(B(i)).

**Requisitos:**
1. Crie dois vetores (A e B) com 10 milhões de elementos aleatórios. 
2. Abordagem 1 (Laço for): Implemente o cálculo usando um laço for que itere por todos os elementos dos vetores. 
3. Abordagem 2 (Vetorizada): Implemente o mesmo cálculo usando as operações element-wise do MATLAB, sem usar laços explícitos. 
4. Utilize as funções tic e toc do MATLAB para medir o tempo de execução de cada abordagem. 
5. Exiba o tempo gasto por cada método e calcule a diferença de desempenho (por exemplo, "A abordagem vetorizada foi X vezes mais rápida").

## Programa 04: Manipulação de Matrizes

Praticar a indexação e a manipulação de matrizes para selecionar, modificar e extrair subconjuntos de dados de uma matriz.

**Enunciado:** Crie uma matriz quadrada M de dimensão 6x6 com números inteiros aleatórios entre 10 e 90. Após criar a matriz, realize e exiba o resultado de cada uma das seguintes operações de forma sequencial:

1. Exiba a matriz original M. 
2. Crie uma nova matriz onde a diagonal principal de M foi substituída pelo número 1. 
3. Crie uma nova matriz que contenha apenas as linhas pares de M. 
4. Crie uma nova matriz que contenha apenas as colunas ímpares de M. 
5. Calcule e exiba a soma dos elementos da segunda linha de M. 
6. Substitua todos os elementos da terceira coluna de M pelo valor -5. 
7. Extraia a submatriz 3x3 do canto inferior direito de M.

## Programa 05: Análise de Somas em Matrizes

Utilizar as funções de agregação do MATLAB para calcular diferentes tipos de somas em uma matriz, reforçando o conceito de operações por coluna e por linha.

**Enunciado:** Crie uma matriz D de dimensão 5x4 com números inteiros aleatórios entre 1 e 20. Com base nesta matriz, calcule e exiba os seguintes valores:

1. Exiba a matriz original D. 
2. A soma total de todos os elementos da matriz. 
3. Um vetor coluna onde cada elemento é a soma dos elementos da linha correspondente da matriz D. 
4. Um vetor linha onde cada elemento é a soma dos elementos da coluna correspondente da matriz D. 
5. A soma dos elementos da diagonal principal de D (Dica: primeiro, extraia a diagonal).

## Programa 06: Método Iterativo de Jacobi

Implementar o método de Jacobi, um algoritmo iterativo usado para encontrar soluções aproximadas para um sistema de equações lineares.

**Enunciado:** Resolva o seguinte sistema de equações lineares usando o método de Jacobi:

```textmate
10x₁ -  x₂ + 2x₃ = 6
-x₁ + 11x₂ -  x₃ + 3x₄ = 25
 2x₁ -  x₂ + 10x₃ -  x₄ = -11
       3x₂ -   x₃ + 8x₄ = 15
```

**Requisitos:**

1. Comece com uma estimativa inicial para as variáveis (por exemplo, x₁ = 0, x₂ = 0, x₃ = 0, x₄ = 0). 
2. Isole cada variável na sua respectiva equação para criar as equações de iteração. Por exemplo, para x₁:
x₁ = (6 + x₂ - 2x₃) / 10 
3. Implemente um laço (while ou for) que atualize os valores de x₁, x₂, x₃, x₄ a cada iteração, usando os valores da iteração anterior. 
4. Defina um critério de parada: a iteração deve parar quando a diferença entre os valores das variáveis na iteração atual e na anterior for menor que uma tolerância pré-definida (ex: 1e-5) ou após um número máximo de iterações (ex: 100). 
5. Ao final, exiba a solução aproximada encontrada para o sistema.