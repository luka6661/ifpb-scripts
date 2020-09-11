#!/bin/bash

# Melhore o script anterior para que este compacte o novo diretório criado, removendo este diretório após a sua compactação. (o arquivo compactado deve ser copiado para o diretório inicial (o diretório atual, no caso).

data=$(date +%F)

mkdir -p /bin/${data}
cp * /bin/${data}

cd /bin
# -c => cria arquivo .tar
# -f => nome do arquivo a se colocar
tar -cf ${data}.tar ./${data}

cp ${data}.tar ..
rm -rf ./${data}

