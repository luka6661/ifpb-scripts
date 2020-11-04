#!/bin/bash

# Escreva um script que exiba um arquivo parte por parte
# (digamos 10 linhas em cada parte), esperando por um enter,
# até o fim do arquivo.

aguarda_read=0
while IFS=$'\n' read -r line <&3; do
  printf '%q\n' "$line"
  (( aguarda_read++ ))
  if (( aguarda_read > 9 )); then
    aguarda_read=0
    read -r -p 'Press enter'
  fi
done 3< <(cat arq.txt)
