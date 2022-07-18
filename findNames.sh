#!bin/bash

findnames(){
	regex="^[A-Z][a-z]+$"
	for palabra in $(cat $1)
	do
		if [[ $palabra =~ $regex ]]
		then
			echo $palabra
		fi
	done

}
