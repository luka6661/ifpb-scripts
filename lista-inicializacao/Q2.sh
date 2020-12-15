#!/bin/bash

# Escreva um script que remova todos os arquivos da pasta
# /home/<seu_user>/tmp. Faça que este script seja executado todas as
# vezes que o computador for ligado.

# Procedimento: mova o script para /etc/init.d/
# sudo cp Q2.sh /etc/init.d/del_tmp.sh

rm -rf /home/${whoami}/tmp/{*,.*}

