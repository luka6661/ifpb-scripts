#!/bin/bash

# Escreva um script que remova as linhas em branco
# de um arquivo. Adicione uma opção para que o script
# conte as linhas em branco de um arquivo, em vez de removê-las.

read -p 'Digite o nome do arquivo para análise: ' file
read -p 'Digite 1 para CONTAR linhas em branco ou 2 para DELETAR linhas em branco: ' opt

if [ $opt -eq 1 ]; then
	echo "O arquivo $file possui $(grep -c "^$" $file) linhas em branco"
fi

if [ $opt -eq 2 ]; then
	grep -Ev "^$" $file > novo-${file}
fi

