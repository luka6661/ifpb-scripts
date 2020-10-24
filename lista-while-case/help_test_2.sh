#!/bin/bash

#count=0

#while [ $count -le 5 ]; do


#	read -p 'Digite uma opção: ' opt

#	case $opt in
#		"a"|"b") echo "Opção 1" ;;
#		"c") echo "Opção 3" ;;
#		"d") echo "Opção 4" ;;
#		"e") echo "Opção 5" ;;
#		"f") echo "Opção 6" ;;
#		"g") echo "Opção 7" ;;
#		"h") echo "Opção 8" ;;
#		*) echo "Nenhuma" ;;
#	esac

#	(( count += 1 ))
#done

#while read a b; do
#	echo "$a $b"
#done < file.txt

while true; do
	
	echo "Opções do usuário: 
		1. logica
		2. aritmetica
		3. strings
		4. variaveis
		5. arquivos
		6. extended
		Digite o número ou 'sair' para encerrar o programa:
		"
	read -p ">> " opt

	case $opt in
		1) clear ;
			echo "
			Ajuda sobre os parâmetros lógicos do comando test:

			( EXPRESSÃO )
              			A EXPRESSÃO é verdadeira

       			! EXPRESSÃO
              			A EXPRESSÃO é falsa

       			EXPRESSÃO1 -a EXPRESSÃO2
              			tanto EXPRESSÃO1 como EXPRESSÃO2 são verdadeiras

       			EXPRESSÃO1 -o EXPRESSÃO2
              			ou EXPRESSÃO1 ou EXPRESSÃO2 é verdade
			" 
			;;

		2) clear ;
			echo "
			ajuda sobre os parâmetros aritméticos do comando test:

			INTEGER1 -eq INTEGER2
              			INTEGER1 é igual a INTEGER2

       			INTEGER1 -ge INTEGER2
              			INTEGER1 é maior ou igual a INTEGER2

       			INTEGER1 -gt INTEGER2
              			INTEGER1 é maior que INTEGER2

       			INTEGER1 -le INTEGER2
              			INTEGER1 é inferior ou igual a INTEGER2

       			INTEGER1 -lt INTEGER2
              			INTEGER1 é inferior a INTEGER2

       			INTEGER1 -ne INTEGER2
              			INTEGER1 não é igual a INTEGER2
			"
			;;

		3) clear ;
			echo "
			ajuda sobre os parâmetros para strings do comando test:

			-n STRING
              			o comprimento do STRING é diferente de zero

       				STRING equivalente a -n STRING

       			-z STRING
              			o comprimento do STRING é zero

      	 		STRING1 = STRING2
              			as strings são iguais

       			STRING1 != STRING2
              			as strings não são iguais
			"
			;;

		4) clear ;
			echo "
			ajuda sobre os parâmetros para variáveis do comando test:

			-n STRING
              			o comprimento do STRING é diferente de zero

       				STRING equivalente a -n STRING

       			-z STRING
              			o comprimento do STRING é zero
			"
			;;

		5) clear ;
			echo "
			ajuda sobre os parâmetros sobre arquivos do comando test:

			FILE1 -ef FILE2
              			FILE1 e FILE2 têm o mesmo dispositivo e os mesmos números de inode

       			FILE1 -nt FILE2
              			O FILE1 é mais recente (data de modificação) do que o FILE2

       			FILE1 -ot FILE2
              			O FILE1 é mais antigo que o FILE2

       			-b ARQUIVO
              			O ARQUIVO existe e é um bloco especial

       			-c ARQUIVO
              			O ARQUIVO existe e é de carácter especial

       			-d ARQUIVO
              			O FILE existe e é um diretório

       			-e ARQUIVO
              			O ARQUIVO existe

       			-f ARQUIVO
              			O ARQUIVO existe e é um ficheiro regular

       			-g ARQUIVO
              			O ARQUIVO existe e é definido-ID do grupo

       			-g ARQUIVO
              			O FILE existe E pertence ao grupo ID efectivo

       			-h ARQUIVO
              			O ARQUIVO existe e é um link simbólico (o mesmo que -L)
			"
			;;

		6) clear ;
			echo '
			ajuda sobre a notação estendida [[ ]]:

			* Com a versão 2.02, Bash introduziu o [[...]] comando
			de teste estendido, que realiza comparações de uma maneira
			mais familiar para programadores de outras linguagens.

			* É um recurso sintático do shell, portanto, possui um
			comportamento especial que o '[' não possui. Você não
			precisa mais citar variáveis porque o '[[' lida com
			strings vazias e strings com espaços em branco de forma
			mais intuitiva.
			Por exemplo, com '[' você tem que escrever
			    if [ -f "$file" ]
			para lidar corretamente com strings vazias ou nomes
			de arquivos com espaços. Com '[[' as aspas são desnecessárias:
			    if [[ -f $file ]]
			
			* Por ser um recurso sintático, ele permite que você use && e ||
			operadores para testes booleanos e para comparações de strings.
			'[' não pode fazer isso porque é um comando regular e &&, ||, < e >
			não são passados para comandos regulares como argumentos de linha de comando.
			
			Para mais informações sobre: http://mywiki.wooledge.org/BashFAQ/031

			'
			;;

		"sair") break ;;

	esac
done

