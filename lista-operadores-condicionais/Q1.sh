#!/bin/bash

# Escreva um script que receba um nome de arquivo como parâmetro de linha de comando e, usando apenas uma linha de comando e operadores condicionais (&& e || ) imprima SIM caso o arquivo exista e NAO, caso contrário.

arq=$1

ls ${arq} &> /dev/null && echo "SIM" || echo "NÃO"
