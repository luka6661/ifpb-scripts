#!/bin/bash

# Escreva um script que funcione como um explorador de arquivos.
# Exibe um menu.
# Se o usuário digitar q, sai do script.

# Se digitar d, mostra os diretórios da pasta atual.

# Se digitar f, exibe os arquivos da pasta atual.

# Se digitar v <arq>, exibe o conteúdo do arquivo <arq>.

# Se digitar cd <dir>, muda para o diretório <dir>, se este existir.

while true; do


	echo "
		Opções do programa:

		q - Sair do programa
		d - Mostra os diretórios da pasta atual
		f - Exibe os arquivos da pasta atual
		v <arq> - Exibe o conteúdo do arquivo <arq>
		cd <dir> - Muda para o diretório <dir>, se este existir.

	"
	
	read -p ">> " opt

	case $opt in
		q) break ;;
		d) clear ; ls -d */ ;;
		f) clear ; ls -p | grep -v / ;;
		v) clear ; ls -p | grep -v / ; read -p 'Qual arquivo: ' arq ; cat $arq ;;
		cd) clear ; ls -d */ ; read -p 'Qual diretório: ' dir ; cd $dir ;;
	esac
done

