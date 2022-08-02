#!/bin/bash

statssentences(){
        regex="\.$"
	contador=1
                for PALABRA in $(cat $1)
                do
                        until [[ $PALABRA =~ $regex ]]
                        do
                                echo $PALABRA >> oracion$contador
                                break
                        done
                        if [[ $PALABRA =~ $regex ]]
                        then
				echo oracion: $contador
                                echo $PALABRA >> oracion$contador
                                #cat oracion$contador
				cat oracion$contador | wc -c >> longitud$contador
				echo 'longitud: ' $(cat longitud$contador)			
				#rm oracion$contador
                                contador=$((contador+1))
                                continue
                        fi
                done
		oracionmascorta $contador
		oracionmaslarga $contador
        	promediolongitudoraciones $contador
		rm $(ls | grep oracion)		
}

oracionmascorta(){
        ORACIONMENOR=0
        menorcantidad=800000
        for (( i=1; i<$1; i++))
        do
                cantidad=$(cat longitud$i)
                if [[ $cantidad -lt $menorcantidad ]]
                then
                        ORACIONMENOR=$i
                        menorcantidad=$cantidad
                fi
        done
        echo 'Oracion mas corta es la: ' $ORACIONMENOR

}

oracionmaslarga(){
	ORACIONMAYOR=0
	mayorcantidad=0
	for (( i=1; i<$1; i++))
        do
		cantidad=$(cat longitud$i)
		if [[ $cantidad -gt $mayorcantidad ]]
                then
                        ORACIONMAYOR=$i
			mayorcantidad=$cantidad
                fi
        done
        echo 'Oracion mas larga es la: ' $ORACIONMAYOR

}

promediolongitudoraciones(){
        CONTADOR=0
        ACUMULADOR=0
        for (( i=1; i<$1; i++))
	do
		cantidad=$(cat longitud$i)
                ACUMULADOR=$((ACUMULADOR+$cantidad))
                CONTADOR=$((CONTADOR+1))
		rm longitud$i
        done
	PROMEDIO=$(echo "scale=2; $ACUMULADOR/$CONTADOR" | bc)
        echo 'Promedio de letras por oracion: ' $PROMEDIO
        #echo 'Promedio de letras por oracion: ' $((ACUMULADOR/CONTADOR))
}
