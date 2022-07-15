#!/bin/bash

source ./statsWords.sh 
texto=$(cat $@)
op=1
while [[ $op -ne 0 ]]; 
do	
	read -p 'Seleccione una opcion de 1 a 5, 0 para fin de datos: ' op
	case $op in
		[1]*) statswords $texto ;;
		[2]*) echo opcion2 ;;
		[0]*0) break ;;
	esac
done

