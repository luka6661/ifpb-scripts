#!/bin/bash

# Escreva um script que remova todos os números de
# telefone de um arquivo de entrada, alterando o seu
# valor para **CENSURADO**.

read -p 'Digite o nome do arquivo: ' arq

sed -E 's/(\(?[0-9]{2}\)? )?([0-9]{4,5}\-[0-9]{4})/ ** CENSURADO ** /g' < $arq

# Deve ser capaz de identificar número como: 
# (83) 99999-9999
# (83) 3217-7777
# 83 98877-6666
# 83 4002-8922
# 4002-8922
# 97777-8563

