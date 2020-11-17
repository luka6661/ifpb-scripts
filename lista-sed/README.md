# Sed - Stream Editor

Line by Line

Comandos do sed:

1. d ( delete )
sed -E '1d' < teste	  -> Delete a primeira linha do arquivo teste
sed -E '1,3d' < teste     -> Delete linhas da 1 até a 3 no arquivo teste
	Deteta até o 3, mais não inclue
sed -E '/F/d' < teste     -> Delete todas as linhas que tiverem algum F
sed -E '/[aA]/d' < teste  -> Delete todas as linhas que tiverem a ou A


2. -e ( comandos em sequência )
sed -e '/A/d' -e '/ã/d' < teste   -> Delete todas as linhas que tem o A e todas 					as linhas que tem o ã

3. s ( substituição )
sed 's/ão/ion' < teste
sed 's/ /-' < teste
sed 's/ /-/g' < teste
sed 's/a/4/g' < teste
sed 's/a/4/ig' < teste
sed 's/a/4/2' < teste

sed -e 's/^/>>/' -e 's/$/ <</' < teste

4. p ( imprimir )
sed '1p' < teste		-> ecoa a linha de entrada e imprime novamente
sed -n '1p' < teste		-> imprime somente a primeira linha


5. a ( Adição ) -> Adiciona algo após ocorrência
sed '2a >>> nova linha <<<' < teste
sed '2,3a >>> nova linhas <<<' < teste

6. i ( insere ) -> Adiciona algo antes da ocorrência
sed '2i >>> antes da ocorrência <<<' < teste
sed '/ /i >>> tem espaço abaixo <<<' < teste


7. c ( alterar )
sed '/ /c --- Aqui tinha espaço em branco ---' < teste
sed '1,3c --- trocando por espaços ---' < teste


8. y ( troca )
sed 'y/aesoi/43501/' < teste

