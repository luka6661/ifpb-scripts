#!/bin/bash

# Considere o script loop.sh:

#!/bin/bash
# while true; do
#   	a=$(( ${RANDOM} % 10 ))
#	touch ${a} && echo “$(date +%H:%M) ${a}: criado!”
#	sleep 1
# b=$(( ${RANDOM} % 10 ))
#	rm ${b} && echo “$(date +%H:%M) ${b}: removido!”
# done

# Execute o script acima de modo que todas as mensagens de sucesso sejam salvas no arquivo 1.log e que as mensagens de erro sejam salvas no arquivo 2.log.

# Execute o script novamente de modo que todas as mensagens de sucesso e erro sejam salvas no arquivo 3.log.

while true;
do
	# inteiro aleatório entre 0-9
	a=$(( ${RANDOM} % 10 ))
	touch ${a} 2>> 2.log && echo “$(date +%H:%M) ${a}: criado!” >> 1.log

	sleep 1

	b=$(( ${RANDOM} % 10 ))
	rm ${b} 2>> 2.log && echo “$(date +%H:%M) ${b}: removido!” >> 1.log
done

# todas as saídas no 3.log

while true;
do
	# inteiro aleatório entre 0-9
	a=$(( ${RANDOM} % 10 ))
	touch ${a} &>> 3.log && echo “$(date +%H:%M) ${a}: criado!” >> 3.log

	sleep 1

	b=$(( ${RANDOM} % 10 ))
	rm ${b} &>> 3.log && echo “$(date +%H:%M) ${b}: removido!” >> 3.log
done

