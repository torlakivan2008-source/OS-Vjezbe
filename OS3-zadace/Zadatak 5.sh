#!/bin/bash

git_putanja=$1

if [ $# != '1' ]; then
	echo Treba proslijediti točno jedan argument
elif ! [ -d "$git_putanja" ]; then
	echo Direktorij  ne postoji
elif ! [ -d "$git_putanja"/.git ]; then
	echo Direktorij nije Git repozitorij
else
	echo $(touch "$git_putanja"/repozitorij_info.txt)
	echo $(git add "$git_putanja"/repozitorij_info.txt && git commit -m "Dodan info repozitorija" && git log)
fi
