#!/bin/bash

# Escreva um script que, baseado em opções de linha de comando:
# a - Remova todas as letras de um arquivo.
# b - Remova todos os dígitos de um arquivo.
# c - Remova todos os caracteres que não são letras nem dígitos de um arquivo. 

read -p 'Digite o nome do arquivo: ' arq

while true; do


	echo "
		Opções do programa:

		a - Remova todas as letras
		b - Remova todos os dígitos
		c - Remova todos os caracteres que não são letras nem dígitos
		q - Sair
	"

	read -p ">> " opt

	case $opt in
		a) clear ; (sed -E 's/[^0-9]*//g' < teste) ;; 
		b) clear ; (sed -E 's/[0-9]//g' < teste) ;; 
		c) clear ; (sed -E 's/[^a-zA-Z0-9]//g' < teste) ;; 
		z) clear ; cat $arq ;;
		q) break ;;
	esac
done
