#!/bin/bash

# [PESQUISA] Escreva um script que exiba e exemplifique
# as diferenças entre o laço while e o laço until.

echo '
	Diferença entre while e until:

	Ambos executam seu corpo de loop algumas vezes:

	* Until Loop executa o bloco de código (entre do..done)
	  quando a condição é falsa e continua executando até que
	  a condição se torne verdadeira. Quando a condição se torna
	  verdadeira, o loop until é encerrado.

	  O seguinte código funcionará porque 5 é menor que 10,
	  o corpo do loop incrementa o valor até que seja
	  exatamente dez, ai ele será encerrado.

		index=5
		until [ $index -gt 10 ]; do
			echo $index
			(( index += 1 ))
		done


	* While Loop executa o bloco de código (entre do..done)
	  quando a condição é verdadeira e continua executando
	  até que a condição se torne falsa. Quando a condição
	  se torna falsa, o loop while é encerrado.

	  Este exemplo não funcionaria, porque 5 não é
	  inicialmente maior que 10, apenas durante o
	  loop ele se tornaria maior.

	  	index=5
		while [ $index -gt 10 ]; do
			echo $index
			(( index += 1 ))
		done


'
