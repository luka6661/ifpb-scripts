#!/bin/bash

# Escreva um script que receba três nomes de arquivos como argumentos de linha de comando e imprima estes nomes em ordem crescente de número de linhas.

arq1=$1
arq2=$2
arq3=$3

line1=$( cat $arq1 | wc -l )
line2=$( cat $arq2 | wc -l )
line3=$( cat $arq3 | wc -l )

touch lst
touch order

echo $line1 >> lst
echo $line2 >> lst
echo $line3 >> lst

cat lst | sort -n > order

first=$(sed -n '1p' < order)
secund=$(sed -n '2p' < order)
third=$(sed -n '3p' < order)

(( $first == $line1 )) && echo $arq1
(( $first == $line2 )) && echo $arq2
(( $first == $line3 )) && echo $arq3

(( $secund == $line1 )) && echo $arq1
(( $secund == $line2 )) && echo $arq2
(( $secund == $line3 )) && echo $arq3

(( $third == $line1 )) && echo $arq1
(( $third == $line2 )) && echo $arq2
(( $third == $line3 )) && echo $arq3

rm lst
rm order

