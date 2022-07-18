#!/bin/bash

statsusagewords(){
	for palabra in $(cat $1)
	do
		echo $palabra
        	grep -o -i $palabra $1 | wc -l
	done
}
