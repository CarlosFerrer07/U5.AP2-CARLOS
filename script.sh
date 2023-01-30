#!/bin/bash

numSubdirectorios=$1

if [ -z "$numSubdirectorios" ]; then #El -z comprueba si una cadena está vacía o no
    echo "No has introducido el parámetro, por favor introdúcelo"
fi

while read nombre; do

    mkdir -p "$nombre" 
    for((i=1; i<=$numSubdirectorios; i++)); do
        mkdir -p "$nombre/Personal $i"
    done

done < ficheros_scripts/nombres.txt #especificamos la ruta del archivo origen mediante "< y la ruta"
