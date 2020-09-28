#!/bin/bash

# [PESQUISA] Quando usamos o pipe (|) para conectar dois ou mais comandos, a variável $? toma o valor de sucesso ou falha do último comando da sequência. Como verificar o sucesso/falha dos outros comandos na sequência do pipe.


cat a.txt | tr '.' ',' | \
	 sort && echo $? || echo $? | \
	 grep -v "x" && echo $? || echo $?

