#!/bin/bash

source ./statsWords.sh
source ./statsUsageWords.sh 
source ./findNames.sh
source ./statsSentences.sh
source ./blankLinesCounter.sh
texto=$(cat $@)
op=1
while [[ $op -ne 0 ]]; 
do	
	read -p 'Seleccione una opcion de 1 a 5, 0 para fin de datos: ' op
	case $op in
		[1]*) statswords $texto ;;
		[2]*) statsusagewords $1 ;;
		[3]*) findnames $1 ;;
		[4]*) statssentences $1 ;;
		[5]*) blanklinescounter $1 ;;	
		[0]*) break ;;
	esac
done

