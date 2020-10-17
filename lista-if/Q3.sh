#!/bin/bash

# Escreva um script que receba uma lista de arquivos
# como parâmetros de linha de comando e exiba na tela
# os arquivos que são executáveis.

for i in $@; do
	[ -x $i ] && echo "Arquivo executável: $i"
done

