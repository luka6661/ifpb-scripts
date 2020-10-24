#!/bin/bash

# [PESQUISA] Cada caso do comando case pode
# terminar com “;;”. Escreva um script que
# exiba as outras opções de terminadores para
# os casos do case, explicando cada uma delas.

echo '
	O bash 4.0 introduziu duas novas facilidades
	no comando case. A partir desta versão, existem
	mais dois terminadores de bloco além do ;;, que são:

	;;&  -  Quando um bloco de comandos é encerrado com
	        este terminador, o programa não sairá do case,
		mas testará os outros padrões.
			
	case "$1" in
        	*3*)
            	    echo "Level Three"
            	    ;;&
        	*2*)
            	    echo "Level Two"
            	    ;;&
        	*1*)
            	    echo "Level One"
            	    ;;&
    	esac

$ script.sh 12
Level Two
Level One

$ script.sh 13
Level Three
Level One

$ script.sh 23
Level Three
Level Two


	;&   -  Neste caso, o próximo bloco será executado,
	        sem querer testar o seu padrão.

	case "$1" in
        	3)
            	   echo "Level Three"
        	   ;&
        	2)
                   echo "Level Two"
            	   ;&
        	1)
        	   echo "Level One"
            	   ;;
        	a)
            	   echo "Level a"
            	   ;&
        	b)
            	   echo "Level b"
            	   ;&
        	c)
            	   echo "Level c"
            	   ;;
    	esac
}

$ script.sh 3
Level Three
Level Two
Level one

$ script.sh 2
Level Two
Level one

$ script.sh a
Level a
Level b
Level c
'
