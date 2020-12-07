#!/bin/bash

# Considere o seguinte arquivo:

#	12 10 13 14
#	6 5 -9 11 12 4
#	15
#	12 3
#	21 1 2 3 4 5 6 7 8 9
#	6

# Escreva um script que importe as funções da questão anterior
# e use-as para encontrar o menor e o maior número do arquivo
# apresentado acima.

. Q1.sh

max=0
min=0

for number in $(cat numbers.txt | tr '\n' ' '); do
	max=$(maior $max $number)
	min=$(menor $min $number)
done

echo "O maior número da lista é $max"
echo "O menor número da lista é $min"
