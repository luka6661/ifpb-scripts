#!/bin/bash

# Considere o script:

# #!/bin/bash
# workdir=”/tmp/workdir”
# mkdir $workdir
# cd $workdir
# ls $1 || echo “Por favor crie o arquivo ${workdir}/${1}”
# ls $1 || exit 1
# ls $2 || echo “Por favor crie o arquivo ${workdir}/${2}”
# ls $2 || exit 1
# ls $3 || echo “Por favor crie o arquivo ${workdir}/${3}”
# ls $3 || exit 1
# cat $1 $2 $3 | tr ‘ ‘ ‘\n’ | sort | grep -v “comentario”

# Altere o script apresentado para que não exiba nenhuma
# mensagem de erro na tela. (Exceto pelo comando da linha 3,
# este deve ser permitido a exibir suas mensagens de erro).

workdir=”/tmp/workdir” 2> /dev/null
mkdir $workdir 2> /dev/null
cd $workdir
ls $1 2> /dev/null || echo “Por favor crie o arquivo ${workdir}/${1}” 2> /dev/null
ls $1 2> /dev/null || exit 1
ls $2 2> /dev/null || echo “Por favor crie o arquivo ${workdir}/${2}” 2> /dev/null
ls $2 2> /dev/null || exit 1
ls $3 2> /dev/null || echo “Por favor crie o arquivo ${workdir}/${3}” 2> /dev/null
ls $3 2> /dev/null || exit 1
cat $1 $2 $3 2> /dev/null | tr ‘ ‘ ‘\n’ | sort | grep -v “comentario” 2> /dev/null
# não precisa no cat mas... vai quê u.u

# Nenhuma mensagem na tela

workdir=”/tmp/workdir” &> /dev/null
mkdir $workdir &> /dev/null
cd $workdir
ls $1 &> /dev/null || echo “Por favor crie o arquivo ${workdir}/${1}” &> /dev/null
ls $1 &> /dev/null || exit 1
ls $2 &> /dev/null || echo “Por favor crie o arquivo ${workdir}/${2}” &> /dev/null
ls $2 &> /dev/null || exit 1
ls $3 &> /dev/null || echo “Por favor crie o arquivo ${workdir}/${3}” &> /dev/null
ls $3 &> /dev/null || exit 1
cat $1 $2 $3 &> /dev/null | tr ‘ ‘ ‘\n’ | sort | grep -v “comentario” &> /dev/null



