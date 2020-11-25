#!/bin/bash

awk '{ print $1" "$2 }' < Q2.txt > meninos.txt
awk '{ print $3" "$4 }' < Q2.txt > meninas.txt

