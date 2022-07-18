#!/bin/bash

statsusagewords(){
	for PALABRA in $(cat $1)
        do
               # echo ${#PALABRA}
                if [ ${#PALABRA} -ge 4 ]
        	then
			apariciones=$(grep -o -i $PALABRA $1 | wc -l)
                       	echo "$apariciones $PALABRA" >> palabrasmayores.txt
               	fi
        done
        sort -nr palabrasmayores.txt | uniq | head
        rm palabrasmayores.txt
}
