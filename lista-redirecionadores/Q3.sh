#!/bin/bash

# O comando ping é usado frequentemente para verificar a conectividade entre dois hosts em uma rede. Adicionalmente, este também pode ser usado para gerar relatórios sobre a qualidade da rede. Escreva um script que execute o comando ping para o site www.google.com e que, ao mesmo tempo que exibe o resultado na tela, salve este resultado no arquivo /tmp/report.txt

ping www.google.com | tee /tmp/report.txt

