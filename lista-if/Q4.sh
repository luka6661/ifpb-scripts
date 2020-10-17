#!/bin/bash

# Escreva um script que receba 3 nomes de arquivos como
# argumentos de linha de comando. Verifique se pelo menos
# 2 destes arquivos passaram do tamanho crítico, que
# significa ter 5 linhas ou mais.

critico=0


if [ $# -lt 2 ]; then
	echo 'Quantidade de argumentos insulficiente.' && exit 1
fi


for i in $@; do
	line=$(cat $i | wc -l)
	if (( line >= 5 )); then
		(( critico += 1 ))
	fi
done

if [ $critico -ge 2 ]; then
	echo 'Pelo menos 2 arquivos passaram do tamanho crítico.'
fi

