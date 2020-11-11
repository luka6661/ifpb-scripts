#!/bin/bash

# Escreva um script que, baseado em opções de linha de comando:
#	a - Liste apenas os diretórios de uma pasta
#	b - Liste apenas os executáveis
#	c - Liste apenas os scripts shell

while true; do
	echo "
	Opções:
		a - Liste apenas os diretórios de uma pasta
		b - Liste apenas os executáveis
		c - Liste apenas os scrips shell
		sair - Sair do programa
	"

	read -p ">> " opt

	case $opt in
		a) clear ;
			ls -l | grep -E '^d' | cut -d ' ' -f 10
		;;
		b) clear ;
			ls -l | grep -E '\-..x' | rev | cut -d ' ' -f1 | rev
			#ls -l | grep -E '\-..x' | cut -d ' ' -f 10
		;;
		c) clear ;
			for file in *; do
				cat $file &> /dev/null | grep -s -q '#!/bin/bash' $file && echo $file
			done
		;;
		'sair') clear ;
			break
		;;
	esac
done

