
dir_naziv=$1
dir_skripta=$(basename $(pwd))

if [ $# != '1' ]; then
	echo Potrebno je proslijediti samo jedan argument
elif [ $dir_skripta = $dir_naziv ]; then
	echo $(zip svi_zapisi.zip ./*)
else
	echo Direktorij $dir_naziv ne postoji
fi
