#!/bin/bash

# 7 - [PESQUISA] Escreva um script que use a
# ferramenta md5 para verificar a existência de
# arquivos com o mesmo conteúdo no diretório atual.
# Caso existam, imprima o nome dos arquivos duplicados.

md5sum * | cut -d' ' -f1 > md5files.txt

for line in $(cat md5files.txt); do
	for another in $(cat md5files.txt); do
		(( $line == $another ))
	done
done

rm md5files.txt
