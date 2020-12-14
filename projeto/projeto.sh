#!/bin/bash

# Tema 3: Gerenciamento de arquivos

function file_details () {
	echo '_> Detalhes dos arquivos <_'
	echo ''
	for file in $(ls -l); do
		if [ -f $file ]; then
			ls -l $file
		fi
	done
	echo ''
}

function dir_details () {
	echo '_> Detalhes dos diretórios <_'
	echo ''
	ls -l -d -- */
	echo ''
}

function dir () {
	echo "_> Diretórios <_"
	echo ""
	for d in $(ls); do
		if [ -d $d ]; then
			echo "$d"
		fi
	done
	echo ''
}

function file () {
	echo "_> Arquivos <_"
	echo ""
	for f in $(ls); do
		if [ -f $f ]; then
			echo "$f"
		fi
	done
	echo ''
}



while true; do
	clear

	echo "     === Projeto - Explorador de arquivos ==="
	echo ""
	echo "     === Diretório atual: $(pwd) ==="
	echo ""


	dir
	file

	echo "O que iremos fazer ?
		1) buscar arquivo
		2) buscar diretório
		3) listagem detalhada arquivos/diretórios
		4) preview do arquivo
		5) entrar em diretório
		6) voltar diretório
		7) busca detalhada
		q) Sair
	"

	read -p 'Opção: ' opt

	case $opt in
		1) read -p 'Arquivo: ' arq
			if test $(find . -type f -name $arq); then
				echo "$arq encontra-se no diretório atual"
				sleep 3
			else
				echo "$arq não está no diretório atual"
				read -p "Gostaria de fazer uma busca mais ampla(s/n): " up
				if [ $up == 's' ]; then
					if test $(find /home -type f -name "$arq"); then
						echo "O arquivo se encontra em: $(find /home -type f -name "$arq")"
						sleep 7
					else
						echo 'Não encontramos o arquivo no sistema!'
						sleep 4
					fi

				fi
			fi
			;;

		2) read -p 'Diretório: ' dire
			if test $(find . -type d -name $dire); then
				echo "O diretório $dire encontra-se no diretório atual"
				sleep 4
			else
				echo "O diretório $dire não está no diretório atual"
				read -p "Gostaria de fazer uma busca mais ampla(s/n): " d
				if [ $d == 's' ]; then
					if test $(find /home -type d -name "$dire"); then
						echo "O arquivo se encontra em: $(find /home -type d -name "$dire")"
						sleep 7
					else
						echo 'Não encontramos o arquivo no sistema!'
						sleep 4
					fi
				fi
			fi
			;;

		3) clear
			while true; do
				file_details
				dir_details
				echo -en "Digite 'q' e presione ENTER para voltar: "
				read input
				if [[ $input -eq 'q' ]]; then
					break
				fi
			done
			;;

		4) clear
			file
			read -p 'Qual arquivo deseja ver: ' file
			echo ''
			while true; do
				cat $file
				echo ''
				echo -en "Digite 'q' e presione ENTER para voltar: "
				read input
				if [[ $input -eq 'q' ]]; then
					break
				fi
			done
			;;

		5) clear
			dir
			read -p 'Digite o diretório: ' d
			cd $d
			;;

		6) cd .. ;;

		7) clear
			while true; do
				echo 'Na busca detalhada, você listar com base em:
				a - Dono do arquivo
				b - Grupo dono do arquivo
				c - por extensão

				q - sair da busca avançada'
				echo -en 'Opção: '
				read input

				case $input in
					a) read -p 'Digite o nome: ' nome
						echo ''
						find . -user $nome
						echo ''
						;;

					b) read -p 'Digite o grupo: ' grupo
						echo ''
						find . -group $grupo
						echo ''
						;;

					c) read -p 'Digite a extensão(md, txt, sh, py, etc.): ' ext
						echo ''
						find . -type f -name "*.$ext"
						echo ''
						;;

					q) break ;;
				esac
			done
			;;

		q) break ;;
	esac
done
	
