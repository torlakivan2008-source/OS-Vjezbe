#!/bin/bash

broj=$1
niz=()

if [ $broj -gt 0 ] && [ $broj -lt 11 ]; then
	for ((i=1; i<=$broj; i++)); do
		niz+=($i)
	done
	echo ${niz[@]} > brojevi.txt
else
	echo 'Broj nije unutar zadanog raspona!'
fi
