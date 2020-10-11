#!/bin/bash

read -p 'first number: ' n1
read -p 'second number: ' n2

for num in {$n1..$n2}; do
	echo $num
done
