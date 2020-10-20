#!/bin/bash

# Usando o comando if, escreva um script que verifique
# a existência de arquivos com o mesmo número de linhas
# no diretório atual. Caso existam, imprima o nome dos
# arquivos duplicados. Quando listar, verifique (usando if)
# se os parâmetros são arquivos ou diretórios.

# Uma vez o arq1 vai ser comparado com o arq2
# em outra o arq2 vai ser comparada com o arq1
# Não consigo resolver essa parte... fica redundante.

lst=$(ls -F | grep -v '/')

for i in $lst; do
	iline=$(cat $i | wc -l)
	for j in $lst; do
		jline=$(cat $j | wc -l)
		if [ $i == $j ]; then
			continue
		fi
		if [ $iline == $jline ]; then
			echo "$i e $j - $iline linhas"
		fi
	done
done

