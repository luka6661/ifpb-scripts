#!/bin/bash

# Escreva um script que use o comando id para verificar se o mesmo foi executado com usuário root. Caso positivo, deve exibir uma mensagem de erro e sair do script. use substituição de shell e os  operadores condicionais (&& e || ) para resolver este problema em apenas uma linha.



(( $(id -u) == 0 )) && echo 'ERRO' && exit 1
