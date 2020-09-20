#!/bin/bash

# Escreva um script que peça para o usuário digitar um número inteiro. Armazene este número na variável a. Faça a variável a receber o valor a + 1. Imprima o valor de a.

read -p 'Digite um número inteiro: ' a

(( a+=1 ))

echo ${a}
