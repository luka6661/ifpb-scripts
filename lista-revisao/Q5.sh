#!/bin/bash

# Escreva um script que: crie um diretório /bin/DATA onde DATA deve ser a data atual do sistema obtida a partir do comando date (no formato ano-mes-dia); e copie todos os arquivos do diretório atual para este novo diretório.

mkdir -p /bin/$(date +%y-%m-%d)
cp * /bin/$(date +%y-%m-%d)

