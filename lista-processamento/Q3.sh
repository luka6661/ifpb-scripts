#!/bin/bash

# Escreva um script que use o comando tr para
# remover linhas vazias de um arquivo, isto é,
# linhas que possuem apenas o enter (\n).

file=$1

tr -s '\n' < $file > fixed_${file}
