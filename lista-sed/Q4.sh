#!/bin/bash

# Escreva um script que, dado uma lista de CPFs no
# formato xxxxxxxxxxx, coloque cada cpf no formato xxx.xxx.xxx-xx.

read -p 'Digite o nome do arquivo: ' arq

sed -E 's/([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})/\1.\2.\3-\4/g' < $arq
