#!/bin/bash

# Escreva um script que tenha uma função ping_test.
# Esta recebe um endereço IP como parâmetro, pinga para este IP
# (sem exibir nada na tela) e exibe OK se o endereço estiver acessível
# ou FALHA caso contrário.

function ping_test {
	ping -c 3 $1 &> /dev/null
	if [ $? -eq 0 ]; then
		echo 'OK'
	else
		echo 'FALHA'
	fi
}

ping_test 1.1.1.1
