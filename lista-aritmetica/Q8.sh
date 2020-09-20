#!/bin/bash

# Escreva um script que melhore o script da questão anterior para que funcione com números fracionários.


soma=$(bc <<< "$1 + $2 + $3")

echo "Soma dos números flutuantes: ${soma}"
