#!/bin/bash

# Escreva um script que imprime os conceitos de substituição de variáveis e de substituição de shell, com exemplos.

# Utilizando Here Document
# command << token
#     text
#token


cat << EOF

 = Substituição de variáveis =
Sob certas condições, seja no terminal ou em scripts,
quando fazemos referência a uma variável acrescentando
o prefixo “$” ao seu nome, o Bash “entende” que o que 
nós queremos é o valor que essa variável armazena e 
realiza uma substituição.

De um ponto de vista mais técnico, este processo 
é chamado de expansão de variável.

user@PC:~ cor="preta"
user@PC:~ echo \$cor  # sem aspas
preta

user@PC:~ echo "\$cor" # com aspas
preta


user@PC:~ echo '\$cor' # com aspas simples 
\$cor



 = Substituição de comando =

A substituição de comando permite a saída de
um comando substitua o próprio comando. 

A substituição de comando ocorre quando um
comando é encapsulado conforme segue:

	\$(comando)
	ou
	\`comando\`
Bash realiza a expansão executando \`comando\` e
substituindo a substituição de comando com a saída
padrão do comando, com cada marcador de nova linha
sendo deletado.


user@PC:~ \$(whoami)
user


user@PC:~ \`hostname\`
PC


EOF
