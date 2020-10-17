#!/bin/bash

# Escreva um script que exiba o arquivo mais recente
# (cuja criação ou modificação foi realizada mais tarde)
# do diretório atual.


# -l = listagem longa
# -A = Não lista entrads implicitas . e ..
# -t = Ordena pelo horário de modificação (Mais novo primeiro)
# -r = Inverte a ordem

ls -lAtr | tail -1
