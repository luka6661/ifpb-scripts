#!/bin/bash

# Dado um arquivo cuja primeira linha é o título e as linhas
# seguintes são ítens de uma lista. Escreva um script que
# crie um arquivo html completo usando o conteúdo do arquivo de entrada.
# Exemplo de arquivo:

#	Lista de IPs
#	8.8.8.8
#	8.8.4.4
#	127.0.0.1
#	123.123.123.1

read -p 'Digite o nome do arquivo: ' arq
TAB="\t"

cat << EOF > index.html
<!DOCTYPE html>

<html lang='pt-br'>
<head>
	<meta charset='utf-8'>
	<title> Q2 </title>
</head>

<body>
	<h1>first-line</h1>
	<ul>
		
	</ul>
	
</body>
</html>
EOF

(sed -E "s/first-line/$(head -1 $arq)/" index.html) > tmp
rm index.html
mv tmp index.html



for ip in $(sed -n '1!p' < $arq); do
	# não consigo tabular os <li>... u.u
	(sed -E "/<ul>/a <li>$ip</li>" index.html) > tmp
	rm index.html
	mv tmp index.html
done

