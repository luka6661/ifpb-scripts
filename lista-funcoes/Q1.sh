#!/bin/bash

# Escreva um script com uma função que receba 2 números e retorne
# o maior entre eles. Escreva uma nova função, esta recebe 2 números
# e retorna o menor entre eles.

function maior {
	if [ $1 -gt $2 ]; then
		echo "$1"
	else
		echo "$2"
	fi
}


function menor {
	if [ $1 -lt $2 ]; then
		echo "$1"
	else
		echo "$2"
	fi
}

