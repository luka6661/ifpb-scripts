#!/bin/bash

# 5 - Escreva um script que receba vários nomes de
# arquivo como parâmetros de linha de comando
# (o número de parâmetros pode variar de execução para execução)
# e imprima o nome de cada arquivo passado seguido de SIM,
# caso o arquivo exista, e de NAO caso contrário.

for param in $*; do
	ls $param &> /dev/null && echo "$param: SIM" || echo "$param: NÃO"
done

