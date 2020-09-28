#!/bin/bash

# Escreva um script que peça para o usuário digitar 3 nomes de arquivos e imprima o nome daquele que possui o maior número de linhas.

read -p 'Digite o nome do primeiro arquivo: ' arq1
read -p 'Digite o nome do segundo arquivo: ' arq2
read -p 'Digite o nome do terceiro arquivo: ' arq3

l1=$(cat ${arq1} | wc -l)
l2=$(cat ${arq2} | wc -l)
l3=$(cat ${arq3} | wc -l)

(( l1 > l2 )) && (( l1 > l3 )) && echo "maior número de linhas: $l1"
(( l2 > l1 )) && (( l2 > l3 )) && echo "maior número de linhas: $l2"
(( l3 > l1 )) && (( l3 > l2 )) && echo "maior número de linhas: $l3"


