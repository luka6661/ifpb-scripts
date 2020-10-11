#!/bin/bash

# 1 - Escreva um script que imprima todos os números
# pares de 1 até 21. Melhore o script para que imprima
# todos os números pares entre a e b, sendo a o primeiro
# parâmetro de linha de comando, enquanto que b é o segundo.

for number in {1..21}; do
	(( number % 2 == 0 )) && echo "$number: PAR"
done 

# Melhorado

a=$1
b=$2

for number in $1 $2; do
	(( number % 2 == 0 )) && echo "$number: PAR"
done
	
