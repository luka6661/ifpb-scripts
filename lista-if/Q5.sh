#!/bin/bash

# Escreva um script que imprima a palavra DIRETORIOS
# e abaixo liste todos os diretórios da pasta atual.
# Em seguida imprima a palavra ARQUIVOS e abaixo liste
# todos os arquivos da pasta atual. Por fim, imprima a
# palavra LINKS e abaixo liste todos os links simbólicos da pasta atual.

echo 'DIRETÓRIOS:'

for dir in $(ls); do
	if [ -d $dir ]; then
		echo $dir
	fi
done

echo 'ARQUIVOS:'

for arq in $(ls); do
	if [ -f $arq ]; then
		echo $arq
	fi
done

echo 'LNKS:'

letter='l'
for link in $(ls -l); do
	if [[ -L $link ]]; then
		echo $link
	fi
done

