#!/bin/bash

# Escreva um script que recebe 3 nomes de arquivo como parâmetros de linha de comando, checa se estes arquivos existem (caso não exista algum, deve sair do programa), e imprime a soma dos números de linhas dos 3 arquivos. Utilize substituição de shell e o comando wc -l para contar o número de linhas de cada arquivo.


arq1="$1"
arq2="$2"
arq3="$3"

declare -i total=0


ls -1 ${arq1} &> /dev/null || exit 0
ls -1 ${arq2} &> /dev/null || exit 0
ls -1 ${arq3} &> /dev/null || exit 0

(( total += $(cat $arq1 | wc -l) ))
(( total += $(cat $arq2 | wc -l) ))
(( total += $(cat $arq3 | wc -l) ))


echo "Número total de linhas: ${total}"

