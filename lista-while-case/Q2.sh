#!/bin/bash

# Escreva um script que espera que um arquivo chamado key
# seja criado no diretório atual, verificando isso a cada
# 2 segundos, até que o arquivo seja criado.

file="key"

while true; do
	[[ -f $file ]] && break
	sleep 2
done

