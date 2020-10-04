#!/bin/bash

# Considere o seguinte arquivo a.txt:

# obase=16
# 43^2 - (11^3 + 31/4)
# 10+10

# Escreva um script que use o programa bc e redirecionadores
# de entrada para resolver estas contas. Faça uma versão usando
# pipe e outra sem usar pipe.

# com redirecionador
bc < a.txt

#com pipe
cat a.txt | bc

