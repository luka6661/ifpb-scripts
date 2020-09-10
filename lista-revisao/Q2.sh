#!/bin/bash

# Escreva um script que pergunte ao usuário o nome de 3 diretórios e liste todos os arquivos destes 3 diretórios.

read -p 'Digite o primeiro diretório para listagem: ' D1
read -p 'Digite o segundo diretório para listagem: ' D2
read -p 'Digite o terceiro diretório para listagem: ' D3

echo "==============="
echo "Diretório $D1:"
ls -1 $D1

echo "==============="
echo "Diretório $D2:"
ls -1 $D2

echo "==============="
echo "Diretório $D3:"
ls -1 $D3
echo "==============="
