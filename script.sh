#!/bin/bash

numSubdirectorios=$1 #nos guardamos el parámetro en la variable

if [ -z "$numSubdirectorios" ]; then #El -z comprueba si una cadena está vacía o no
    echo "No has introducido el parámetro, por favor introdúcelo"
fi

while read nombre; do

    mkdir -p "$nombre" # creamos directorios, la opcion -p, permite crear directorios sino los tiene
    for((i=1; i<=$numSubdirectorios; i++)); do
        mkdir -p "$nombre/Personal $i"
    done

done < ficheros_scripts/nombres.txt #especificamos la ruta del archivo origen mediante "< y la ruta"
