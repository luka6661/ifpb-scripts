#!/bin/bash

# 2 - Escreva um script que exiba o nome e
# número de linhas de cada um dos arquivos
# do diretório atual. Melhore o script para
# que os arquivos sejam exibidos em ordem decrescente
# em relação ao número de linhas. Melhore ainda mais
# o script para que receba o nome do diretório
# (de onde serão listados os nomes dos arquivos) seja
# lido como parâmetro de linha de comando.

for arq in *; do
	echo "Nome do arquivo: $arq"
	echo "Número de linhas: $(wc -l < $arq)"
	echo "-------"
done

# melhorado

list=$(ls)

for arq in $list; do
	cat $arq | wc -l >> lst.txt
done

cat lst.txt | sort -nr

rm lst.txt

# ainda melhor...

dir=$1
lst=$(ls $dir)

for arq in $lst; do
	cat $dir/$arq | wc -l >> list.txt
done

cat list.txt | sort -nr

rm list.txt

