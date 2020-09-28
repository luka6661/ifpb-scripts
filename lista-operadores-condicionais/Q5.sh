#!/bin/bash

# Escreva um script que recebe o nome de um arquivo como argumento de linha de comando e imprime GOOD caso este arquivo exista e possua mais que 5 linhas.

arq=$1

(( $(ls -1 $arq | wc -l) > 5 )) && echo 'GOOD'


