#!/bin/bash

function statswords(){
#	cat $@ | sort | head --lines=1 | uniq > ordenadas.txt
	PALABRAMAYOR=''
	for PALABRA in $@
        do
	        if [ ${#PALABRA} -gt ${#PALABRAMAYOR} ]
       		then
                	PALABRAMAYOR=$PALABRA
        	fi
        done
	echo 'Palabra mas larga: ' $PALABRAMAYOR

	PALABRAMENOR='fdsaaadddffoijkgjhjhlkhkjlkjlkhklhlkjkljkllkjljkjlkkklkjlffffffffffgfdgdfgfdgdf'
        for PALABRA in $@
        do
		if [ ${#PALABRA} -lt ${#PALABRAMENOR} ]
                then
                        PALABRAMENOR=$PALABRA
                fi
        done
        echo 'Palabra mas corta: ' $PALABRAMENOR
	
	CONTADOR=0
	ACUMULADOR=0
	for PALABRA in $@
	do
		ACUMULADOR=$((ACUMULADOR+${#PALABRA}))
		CONTADOR=$((CONTADOR+1))
	done
	PROMEDIO=$(echo "scale=2; $ACUMULADOR/$CONTADOR" | bc)
	echo 'Promedio de letras por palabra: ' $PROMEDIO
	}

