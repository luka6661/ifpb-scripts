#!/bin/bash

# Escreva um script chamado help_test.sh.
# Este deve receber um ou mais parâmetros de linha de comando.
# Se um destes parâmetros for “logica”, o script deve imprimir
# uma ajuda sobre os parâmetros lógicos do comando test.

# Se um destes parâmetros for “aritmetica”, o script deve imprimir
# uma ajuda sobre os parâmetros aritméticos do comando test.

# Se um destes parâmetros for “strings”, o script deve imprimir
# uma ajuda sobre os parâmetros para strings do comando test.

# Se um destes parâmetros for “variáveis”, o script deve imprimir
# uma ajuda sobre os parâmetros para variáveis do comando test.

# Se um destes parâmetros for “arquivos”, o script deve imprimir
# uma ajuda sobre os parâmetros sobre arquivos do comando test.


lst="${@}"

if [ $# -eq 0 ]; then
	echo "
	O script precisa de argumentos para funcionar adequadamente.

	Lista de argumentos disponíveis:
		logica       ajuda sobre os parâmetros lógicos do comando test
		aritmetica   ajuda sobre os parâmetros aritméticos do comando test
		strings      ajuda sobre os parâmetros para strings do comando test
		arquivos     ajuda sobre os parâmetros sobre arquivos do comando test
		variaveis    ajuda sobre os parâmetros para variáveis do comando test
	"
fi

if (echo $lst | grep -q "logica"); then
	echo "
	( EXPRESSÃO )
              A EXPRESSÃO é verdadeira

       ! EXPRESSÃO
              A EXPRESSÃO é falsa

       EXPRESSÃO1 -a EXPRESSÃO2
              tanto EXPRESSÃO1 como EXPRESSÃO2 são verdadeiras

       EXPRESSÃO1 -o EXPRESSÃO2
              ou EXPRESSÃO1 ou EXPRESSÃO2 é verdade
	"
fi

if (echo $lst | grep -q "aritmetica"); then
	echo "
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
fi


if (echo $lst | grep -q "strings"); then
	echo "
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

fi

if (echo $lst | grep -q "arquivos"); then
	echo "
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
fi

if (echo $lst | grep -q "variaveis"); then
	echo "
	-n STRING
              o comprimento do STRING é diferente de zero

       STRING equivalente a -n STRING

       -z STRING
              o comprimento do STRING é zero
	"
fi


