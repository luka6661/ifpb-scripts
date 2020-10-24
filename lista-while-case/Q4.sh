#!/bin/bash

# Escreva um script que use o laço while para
# contar quantas linhas de um arquivo tem apenas
# números e quantas tem letras.

only_numbers=0
only_letters=0

while read line; do
	if [[ $line =~ ^[[:digit:]]+$ ]]; then
		(( only_numbers += 1 ))
	fi

	if [[ $line =~ ^[[:alpha:]]+$ ]]; then
		(( only_letters += 1 ))
	fi
done < file.txt

echo "Quantidade de linhas que só possuem números: $only_numbers"
echo "Quantidade de linhas que só possuem letras: $only_letters"

