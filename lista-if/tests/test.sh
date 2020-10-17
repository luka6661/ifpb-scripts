#!/bin/bash

# Estrutura condicional - if

# Condição é qualquer coisa que faça um update na variável $?

# Vamos falar do TEST == [ ]
# Vamos dividir...

# 1. Tests com strings
# 2. Tests aritméticos
# 3. Tests para arquivos
# 4. Tests com variáveis
# 5. Tests lógicos

# Mensagem...

echo "O objetivo desse script é comparar o seu número com o número '5'."
read -p 'Entre com um número entre 1 e 10: ' numero

# Tratar erros...
# =~ == indica que a expressão da direita é uma REGEX
# ! == negação ou inverso
[[ ! $numero =~ ^[0-9]+$ ]] && echo 'Erro! Digite um *número*!' && exit 1


# -le == less or equal
[[ $numero -gt 10 || $numero -le 0 ]] && echo 'Erro! Seu número deve ser entre 1 e 10' && exit 1

# Respostas normais...
# -eq == equal
[ $numero -eq 5 ] && echo 'Seu número é igual a 5' && exit 0

# -lt == less than
[ $numero -lt 5 ] && echo 'Seu número é menor que 5' && exit 0

# -gt greater than
[ $numero -gt 5 ] && echo 'Seu número é maior que 5' && exit 0


