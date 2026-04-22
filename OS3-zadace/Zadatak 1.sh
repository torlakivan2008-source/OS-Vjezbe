#!/bin/bash

putanja=$1
ekstenzija=$2

if [ $# != '2' ]; then
	echo 'Potrebno je proslijediti točno 2 argumenta!'
elif [ -e $putanja/*$ekstenzija  ]; then
	for datoteka in $putanja/*$ekstenzija; do
		base_putanja=$(basename $datoteka)
		echo $base_putanja
	done
else
	echo U ovom direktoriju ne postoji niti jedna datoteka sa ekstenzijom $ekstenzija
fi
