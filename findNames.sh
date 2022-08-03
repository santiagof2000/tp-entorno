#!bin/bash

findnames(){
	regex="^[A-Z][a-z]+$"
	echo "Palabras con formato Nnnnnn: "
	for palabra in $(cat $1)
	do
		if [[ $palabra =~ $regex ]]
		then
			echo $palabra >> propios
		fi
	done
	sort propios | uniq
	rm propios

}
