#!/bin/bash

# Escreva um script chamado help_red.sh que exibe uma ajuda sobre redirecionadores.
# Para cada redirecionador estudado ( >, >>, 2>, 2>>, &>, &>>, <, <<, <<<, e | ) o
# script deve imprimir o redirecionador, uma explicação sobre o seu funcionamento
# e um exemplo útil de uso.

clear

cat << 'EOF'

Vamos falar um pouco sobre redirecionadores.

A maioria dos comandos tem uma entrada, uma saída e podem gerar erros.

stdin = Entrada padrão          Default: teclado
stdout = Saída padrão           Default: tela
stderr = Saída de erro padrão   Default: tela 

## Redirecionamento de saída padrão: >  >>

Se quisermos mudar a saída padrão de um programa,
podemos usar o > (maior que) ou >> (maior, maior),
seguido pelo nome do arquivo para o qual se deseja
mandar a saída.

>	Sobreescreve o arquivo
>>	Adiciona a saída do comando ao final do comando, sem apagá-lo

luka@pc~$ cat > texto.txt

Esse texto está sendo escrito pelo teclado e o comando cat 
está copiando para o arquivo. Pressione CONTROL-D para 
sinalizar o fim do arquivo.

luka@pc~$ cat >> texto.txt
Neste caso, o conteúdo irá para o arquivo texto.txt e será
adicionado ao final do arquivo, sem sobreescreve-lo.



## Redirecionamento da saída de erros padrão: 2> 2>>

Assim como o default do shell é receber os dados
do teclado e mandar as saídas para a tela, os erros
também serão enviados para a tela se você não especificar
para onde deverão ser enviados.

Para redirecionar os erros use 2> seguido pelo nome
do arquivo que irá receber os erros.

2>	Redireciona a saída padrão sobrescrevendo o arquivo
2>>	Redireciona a saída padrão adicionando no final do arquivo


luka@pc~$ ls arquivonaoexiste 2> erros
O comando ls irá gerar um erro porque o arquivo não existe. A saída
de erro então será enviada para o arquivo erros. Se o arquivo não
existir será criado, mesmo não havendo erros.


luka@pc~$ ls arquivonaoexiste 2>> erros
Neste caso, o erro será adicionado ao final do arquivo erros,
sem sobreescreve-lo.



## Redirecionamento da entrada padrão: <

Altera a entrada dos comandos, avisando ao shell que
a entrada padrão não será o teclado e sim um arquivo
especificado.

luka@pc~$ sort < arquivo

O comando sort ordena as linhas de uma arquivo alfabeticamente.
Aqui redirecionamos o conteúdo do arquivo diretamente, sem passá-lo
como argumento.

luka@pc~$ cat < pedido.txt

Usando o comando cat com redirecionamento de entrada vindo
de um arquivo tem o mesmo efeito de user o nome d arquivo como
parâmetro.



## Redirecionamento de todas as saídas padrão: &> &>>

É possivel redirecionar tanto a saída padrão quanto
a saída de erro para um mesmo arquivo.

luka@pc~$ cat x y &> listao
luka@pc~$ cat listao
cat x: No such file or directory
Isso é y

São passados 2 arquivos como parâmetro para o comando cat(x e y).
O arquivo x não existe e a saída de erro vai para o arquivo listao.
Já o arquivo y existe e a saída padrão do comando também vai para 
o arquivo listao.


luka@pc~$ cat x y &>> listao
Neste caso, acontece o mesmo que no exemplo anterior, com a
diferença de que o arquivo listao não será sobreescrito.



## heredoc: <<

Um Heredoc é um tipo de redirecionamento que permite
passar várias linhas de entrada para um comando.

 -> Estamos usando deste para escrever este programa ;) <-

A sintaxe de escrita do heredoc assume a seguinte forma:

comando << delimitador
	here doc
delimitador

- Você pode usar qualquer string como um identificador
de delimitação, os mais comumente usados são EOF ou END.

- Se o identificador de delimitação não estiver entre aspas,
o shell irá substituir todas as variáveis, comandos e
caracteres especiais antes de passar as linhas do 
here-document para o comando.

- Anexar um sinal de menos ao operador de redirecionamento
<<- fará com que todos os caracteres de tabulação iniciais
sejam ignorados. Isso permite que você use indentação ao
escrever here-documents em scripts de shell.

- A última linha termina com o identificador de delimitação.
Espaço em branco na frente do delimitador não é permitido.


luka@pc~$ cat << END > file.txt
O diretório atual é: $PWD
Você está logado como: $(whoami)
END



## Here string

Uma string here pode ser considerada uma forma
simplificada de um Doc here. Ele consiste em
nada mais do que COMANDO <<< $WORD, onde $WORD é
expandido e enviado a stdin de COMANDO.

luka@pc~$ wc -w <<< "Isto é um teste."
4
O comando wc erá contar quantas palavras foram
passadas pelo here string.



## Redirecionamento de comandos: |

Os redirecionamentos anteriores sempre se referiam a arquivos - 
mandavam, recebiam, simulavam arquivos locais... - o que veremos
agora é o redirecionamento da saída de um programa para a entrada
de outro.

|	(pipe) encana a saída de um comando para a entrada de outro


luka@pc~$ ls -l | more
Este é um comando de pipe simples, criando uma longa lista
de arquivos e canalizando a saída para o comando more.

EOF
