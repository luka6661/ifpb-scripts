#!/bin/bash

# Melhore o script anterior para que, em vez de imprimir na tela os arquivos, salve esta lista no arquivo /tmp/que_lista_linda.txt

ls -1 $1 >> /tmp/que_lista_linda.txt
ls -1 $2 >> /tmp/que_lista_linda.txt
ls -1 $3 >> /tmp/que_lista_linda.txt


