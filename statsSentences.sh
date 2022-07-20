#!/bin/bash

statssentences(){
        regex="\.$"
        contador=1
        echo oracion: $contador
                for PALABRA in $(cat $1)
                do
                        until [[ $PALABRA =~ $regex ]]
                        do
                                echo $PALABRA >> 'oracion'$contador
                                break
                        done
                        if [[ $PALABRA =~ $regex ]]
                        then
                                echo $PALABRA >> 'oracion'$contador
                                cat 'oracion'$contador
				cat 'oracion'$contador | wc -c >> "longitud"$contador
				echo 'longitud: ' $(cat $"longitud$contador")			
				rm 'oracion'$contador
                                contador=$((contador+1))
                                echo oracion: $contador
                                continue
                        fi
                done
		oracionmascorta $contador
		oracionmaslarga $contador
        	promediolongitudoraciones $contador
		REGEX='^[A-Z]+.*\.$'
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
       # rm longitud1 longitud2 longitud3 longitud4 longitud5

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
	#rm longitud1 longitud2 longitud3 longitud4 longitud5

}

promediolongitudoraciones(){
        CONTADOR=0
        ACUMULADOR=0
        for (( i=1; i<$1; i++))
	do
		cantidad=$(cat longitud$i)
                ACUMULADOR=$((ACUMULADOR+$cantidad))
                CONTADOR=$((CONTADOR+1))
        done
        echo 'Promedio de letras por oracion: ' $((ACUMULADOR/CONTADOR))
	rm longitud1 longitud2 longitud3 longitud4 longitud5

}
