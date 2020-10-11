#!/bin/bash

# 3 - Escreva um script que calcule (e exiba na tela)
# a soma de todos os números de 1 até 20. Melhore este
# script para que peça para o usuário digitar dois números,
# a e b, e calcule a soma dos números de a até b.

declare -i soma

for num in {1..20}; do
	(( soma += $num ))
done

echo "A soma de todos os números: $soma"


# Soma do range de números do usuário
declare -i somas

read -p "Digite o primeiro número: " n1
read -p "Digite o segundo número: " n2

lst_num=$(seq $n1 $n2)

for num in $lst_num; do
	(( somas += num ))
done

echo "Soma dos números de $n1 a $n2: $somas"

