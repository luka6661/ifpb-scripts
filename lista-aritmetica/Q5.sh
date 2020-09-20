#!/bin/bash

# Escreva um script que recebe 3 nomes de diretórios como parâmetros de linha de comando, checa se estes diretórios existem (caso não exista algum, deve sair do programa), e imprime a soma do número arquivos (ou diretórios) dentro dos diretórios passados. Utilize substituição de shell e o comando ls | wc -l para contar o número de arquivos de cada diretório.


dir1=$1
dir2=$2
dir3=$3

declare -i arq_soma=0

ls ${dir1} &> /dev/null || exit 0
ls ${dir2} &> /dev/null || exit 0
ls ${dir3} &> /dev/null || exit 0


(( arq_soma += $(ls -1 ${dir1} | wc -l) ))
(( arq_soma += $(ls -1 ${dir2} | wc -l) ))
(( arq_soma += $(ls -1 ${dir3} | wc -l) ))


echo "Número de arquivos e diretórios encontrados: $arq_soma"
