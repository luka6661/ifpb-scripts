#!/bin/bash

# Escreva um script que valide um número qualquer em
# formato moeda do Brasil: R$ 1.000,00.
# Validar significa dizer se o número está no padrão ou não.

regex='^R\$\s*[0-9]{1,3}(\.[0-9]{3})*,[0-9]{2}$'

read -p 'Digite um valor para validação: ' num

[[ $num =~ $regex ]] && echo válido || echo inválido

