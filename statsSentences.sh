#!/bin/bash

function statssentences(){
#       cat $@ | sort | head --lines=1 | uniq > ordenadas.txt
        PALABRAMAYOR=''
        for PALABRA in $@
        do
                if [ ${#PALABRA} -gt ${#PALABRAMAYOR} ]
                then
                        PALABRAMAYOR=$PALABRA
                fi
        done
        echo 'Palabra mas larga: ' $PALABRAMAYOR

        PALABRAMENOR='fdsaaadddffffffffffffgfdgdfgfdgdf'
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
        echo 'Promedio de letras por palabra: ' $((ACUMULADOR/CONTADOR))

apariciones=$(grep -o -i $PALABRA $1 | wc -l)
                        echo "$apariciones $PALABRA" >> palabrasmayores.txt
                fi
        done
        sort -nr palabrasmayores.txt | uniq | head
        rm palabrasmayores.txt

}

