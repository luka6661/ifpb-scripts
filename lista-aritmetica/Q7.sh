#!/bin/bash

# Escreva um script que soma 3 números passados como argumentos de linha de comando.

n1=$1
n2=$2
n3=$3

declare -i soma=0

(( soma += n1 + n2 + n3 ))

echo "soma: ${soma}"

