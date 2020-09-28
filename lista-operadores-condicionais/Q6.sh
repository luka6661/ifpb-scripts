#!/bin/bash

# Escreva um script que recebe o nome de 3 arquivos como parâmetros de linha de comando e pede para o usuário digitar uma palavra (denominada texto proibido). Imprima na tela o NOME dos arquivos que possuem este texto proibido, e mova estes arquivos (que possuem o texto proibido) para a pasta /tmp.


arq1=$1
arq2=$2
arq3=$3

read -p 'Digite a palavra proibida: ' proibida

cat $arq1 2> /dev/null | grep -q $proibida && echo $arq1 && mv $arq1 /tmp
cat $arq2 2> /dev/null | grep -q $proibida && echo $arq2 && mv $arq2 /tmp
cat $arq3 2> /dev/null | grep -q $proibida && echo $arq3 && mv $arq3 /tmp
