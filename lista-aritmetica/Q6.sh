#!/bin/bash

# Escreva um script que use o arquivo /etc/passwd para contar o número de usuários do sistema. Adicionalmente, use grep, wc -l e substituição de shell para verificar quantos usuários usam /bin/bash como interpretador de comandos padrão. Use aritmética do shell para calcular quantos usuários não usam /bin/bash como interpretador de comandos padrão.


declare -i no_bash_users=0

number_users=$(cut -d: -f1 /etc/passwd | wc -l)
bin_bash_users=$(grep "/bin/bash" /etc/passwd | wc -l)

(( no_bash_users += $(grep -v "/bin/bash" /etc/passwd | wc -l) ))

echo "Número de usuários no sistema: $number_users"
echo "Número de usuários do BASH: $bin_bash_users"
echo "Número de usuários que não usam o BASH: $no_bash_users"

