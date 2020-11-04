#!/bin/bash

# Escreva um script que receba o nome de um arquivo
# e um número (y) como parâmetros de linha de comando.
# O script deve imprimir a coluna número y do arquivo.

file=$1
y=$2

echo "$(cat $file | cut -f $y)"

