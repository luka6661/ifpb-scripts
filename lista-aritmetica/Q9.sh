#!/bin/bash

# Escreva um script que recebe dois números inteiros como parâmetros de linha de comando, digamos a e b, e imprime a porcentagem que a é de b e a porcentagem que b é de a.


n1=$1
n2=$2

a=$(echo "scale=1; $n2 * $n1 / 100" | bc)
b=$(echo "scale=1; $n1 * $n2 / 100" | bc)

echo $a
echo $b

