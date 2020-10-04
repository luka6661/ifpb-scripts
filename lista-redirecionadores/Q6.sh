#!/bin/bash

# Considere o script apresentado na questão anterior.
# Suponha que você queira substituir todo ‘:’ da saída por ‘-’.
# Seria simples executar
#		./loop.sh | tr ‘:’ ‘-’
# contudo este comando não faz substituições na saída de erros.
# Como usar redirecionadores de modo que o comando tr consiga
# substituir os caracteres tanto da saída de erro quanto da saída padrão?

while true;
do
	# inteiro aleatório entre 0-9
	a=$(( ${RANDOM} % 10 ))
	touch ${a} 2>> 2.log && echo “$(date +%H:%M) ${a}: criado!” | tr ':' '-' >> 1.log

	sleep 1

	b=$(( ${RANDOM} % 10 ))
	rm ${b} 2>> 2.log && echo “$(date +%H:%M) ${b}: removido!” | tr ':' '-' >> 1.log
done

# Não consigo tratar a saída de erro que sai do comando rm

# Não entendi se era pra tratar a entrada que iria dentro dos arquivos de log ou
# apenas em uma hipotética saída normal no terminal mesmo. Fiquei confuso.

#... ou outro jeito seria:

./loop.sh |& tr ':' '-'

# mas não faz muito sentido pensando em como o código da Q5 foi feito... u.u


# em fim, foda-se :)
