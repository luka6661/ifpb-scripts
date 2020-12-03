#!/bin/bash

# Escreva um script que peça para o usuário digitar um conjunto
# de números na mesma linha, separados por espaço (podem ser vários números,
# o usuário decide quantos) e exiba o menor deles.

read -p "Digite os números separados por espaços: " arr

min=0

for i in ${arr[@]}; do
    (( $i < min || min == 0)) && min=$i
done

echo "min = $min"
