#!/bin/bash

#    0   1   2    3     4      5
A=( zero um dois tres quatro cinco )

# Cada elemento do array
echo ${A[@]}

# Cada índice do array
echo ${!A[@]}

# Quantos elementos tem o array
echo ${#A[@]}

# slice
# a partir da posição 1
echo ${A[@]:1}

# a partir da posição 3, pegar 2 elementos
echo ${A[@]:3:2}

# slice em uma string
B='0123456789'
echo ${B:3:2}

# adicionando elemento no final do array
A+=("seis")
echo ${A[@]}

# passando um array pelo for
for item in ${A[@]}; do
	echo "elemento: $item"
done

# chave e elemento
for key in ${!A[@]}; do
	echo "elemento $key = ${A[key]}"
done

# arrays associativos
declare -A C
C["xico"]="francisco"
C["biu"]="severino"

echo ${!C[@]}
echo ${C[@]}

