#!/bin/bash

# Escreva um script que receba o nome de um arquivo
# e um número (x) como parâmetros de linha de comando.
# O script deve imprimir a linha número x do arquivo.

file=$1
line_number=$2

# tail   -n -> Emite as últimas n linhas
#	       +[n] para emitir as linhas a partir de n

# head   -n -> Emite as n primeiras linhas

echo "Conteúdo da linha: $(cat $file | tail -n +$line_number | head -n 1)"

