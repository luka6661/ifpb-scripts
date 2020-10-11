#!/bin/bash

# 6 - Escreva um script que crie 26 diretórios
# com nomes de A a Z. Dentro de cada diretório
# criado deve ser criado um arquivo com o nome
# do diretório e extensão .py (exemplo A.py, B.py ...).
# O conteúdo de cada um destes arquivos deve ser:

#!/usr/bin/env python3
# print(“Rapi Hellow Uin!”)

# Lembre de dar permissão de execução para cada arquivo gerado.

for arq in {A..Z}; do
	mkdir $arq
	cd $arq
	touch $arq.py
	chmod +x $arq.py
	echo '#!/usr/bin/env python3' >> $arq.py
	echo 'print("Rapi Hellow Uin!")' >> $arq.py
	cd ..
done

