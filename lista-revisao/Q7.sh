#!/bin/bash

# Escreva um script que recebe 3 nomes de arquivo como parâmetros de linha de comando. Use a variável A para armazenar informações sobre o primeiro arquivo passado. Isto deve ser feito usando o comando ls -l e substituição de shell. Faça o mesmo com as variáveis B e C (e os arquivos 2 e 3). Usando substituição de variáveis e redirecionadores, salve o conteúdo das variáveis A, B e C no arquivo info.txt.

A=$(ls -l $1)
B=$(ls -l $2)
C=$(ls -l $3)

echo ${A} >> info.txt
echo ${B} >> info.txt
echo ${C} >> info.txt


