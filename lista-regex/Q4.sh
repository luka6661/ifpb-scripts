#!/bin/bash

#  Escreva um script que valide as seguintes regras
# para criação de senha: pelo menos uma letra maiúscula,
# uma letra minúscula e um número.
# Validar significa receber uma senha e dizer se esta obedece ao padrão ou não.

read -p 'Entre com sua senha: ' pass

# 1 ou mais de cada
lmin='[a-z]+'
lmai='[A-Z]+'
num='[0-9]+'

[[ $pass =~ $lmin ]] && [[ $pass =~ $lmai ]] && [[ $pass =~ $num ]] && echo senha válida || echo senha inválida

