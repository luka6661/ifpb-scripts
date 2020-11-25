#!/bin/bash

#  Dado um arquivo com todos os downloads efetuados pelos usuários no último mês, deseja-se
#  totalizar quanto cada usuário baixou. Segue o formato do arquivo:

#  Nelson www.google.com.br 250
#  Arr445 www.testes.com/dbz.wmv 20050
#  Nelson www.uol.com.br 300
#  Vianna debian.org/9.7.0.iso 800555

awk '{ a[$1] += $3; }

END{ for ( i in a ) 
	print i," ->",a[i]," downloads"; 
}' Q4.txt

