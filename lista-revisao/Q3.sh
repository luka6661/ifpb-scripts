#!/bin/bash

# Melhore o script anterior para que os nomes dos 3 diretórios sejam passados por parâmetros de linha de comando.

echo "==============="
echo "Diretório $1:"
ls -1 $1

echo "==============="
echo "Diretório $2:"
ls -1 $2

echo "==============="
echo "Diretório $3:"
ls -1 $3
echo "==============="
