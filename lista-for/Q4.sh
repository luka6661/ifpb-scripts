#!/bin/bash

# 4 - Escreva um script que gere 101 números aleatórios,
# salvando-os, um por linha, no arquivo num.txt.
# Use o comando wc para verificar se o arquivo num.txt
# tem realmente 101 linhas. Escreva um segundo script,
# este deve ler todos os números de num.txt e calcular a sua soma.

for ((i=1; i<=101; i++)); do
	n=$(( $RANDOM ))
	echo $n >> num.txt
done

echo "O arquivo num.txt tem $(cat num.txt | wc -l) linhas."

# Calculando a soma dos números

for num in $(cat num.txt); do
	soma=$(( soma += $num ))
done

echo "A soma de todos os números da lista num.txt é: $soma"

rm num.txt
