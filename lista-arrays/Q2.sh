#!/bin/bash

# Considere o seguinte arquivo:

#	A 10
#	B 20
#	A 15
#	C 12
#	D 21
#	B 12
#	C 21

# Escreva um script que, para cada nome na coluna 1, some os números da
# coluna 2, totalizando-os. Use arrays associativos, pois os nomes da
# coluna 1 podem mudar.

declare -A array

arq_linha=1

while read line; do
	#key=$(awk '{ print $1 }' Q2.txt)
	#value=$(awk '{ print $2 }' Q2.txt)
	key=$(cat Q2.txt | awk 'NR=='$arq_linha' { print $1 }')
	value=$(cat Q2.txt | awk 'NR=='$arq_linha' { print $2 }')

	if [[ $key == "A" ]]; then
		(( array[A] += $value ))

	elif [[ $key == "B" ]]; then
		(( array[B] += $value ))
	
	elif [[ $key == "C" ]]; then
		(( array[C] += $value ))

	elif [[ $key == "D" ]]; then
		(( array[D] += $value ))
	fi


	arq_linha=$(( $arq_linha + 1 ))

done < Q2.txt

echo "Valor para chave A: ${array[A]}"
echo "Valor para chave B: ${array[B]}"
echo "Valor para chave C: ${array[C]}"
echo "Valor para chave D: ${array[D]}"
