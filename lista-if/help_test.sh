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


if [ $# -eq 0 ]; then
	echo "
	O script precisa de argumentos para funcionar adequadamente.

	Lista de argumentos disponíveis:
		logica       ajuda sobre os parâmetros lógicos do comando test
		aritmética   ajuda sobre os parâmetros aritméticos do comando test
		strings      ajuda sobre os parâmetros para strings do comando test
		arquivos     ajuda sobre os parâmetros sobre arquivos do comando test
	"
fi


