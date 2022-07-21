#!/bin/bash

blanklinescounter(){
	cantidadDeLineas=$(cat $1 | wc -l)
	#cantidadDeLineasSinLasVacias=$(cat -s $1 | wc -l)
	cantidadDeLineasSinLasVacias=$(sed '/^$/d' $1  | wc -l)

	lineasEnBlanco=$((cantidadDeLineas - cantidadDeLineasSinLasVacias))
	#echo $cantidadDeLineas
	#echo $cantidadDeLineasSinLasVacias
	echo "Cantidad de lineas en blanco: $lineasEnBlanco"
}
