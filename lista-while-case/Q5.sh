#!/bin/bash

# Considere o seguinte arquivo ips.txt:

# 8.8.8.8
# 8.8.4.4
# 200.148.191.197
# 168.196.40.154
# 45.225.123.54

# Use um laço while para executar 4 pings para cada ip.
# Liste os IPs que não foram possíveis acessar.

echo 'Pingando...'

while read line; do
	ping -c 4 $line > /dev/null

	if [ ! $? -eq 0 ]; then
		echo "Não é possivel conectar: $line"
	fi
done < ips.txt


