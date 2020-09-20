#!/bin/bash

# escreva um script que peça para o usuário digitar um número e diga se este número é par ou impar.

numero="$1"

modulo=$(( $numero % 2 ))

mkdir 0

mkdir $modulo 2> /dev/null && echo 'IMPAR' && rmdir 0 && rmdir $modulo && exit 0
echo 'PAR' && rmdir 0

# QUE GAMBIARRA DA PORRA
