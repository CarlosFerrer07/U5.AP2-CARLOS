#!/bin/bash

sumaLitros=0 #inicializamos la variable para sumar los litros
contaDias=0 #inicializamos contador para contrar los días que hay

while read linea; do
    #Nos guardamos en una variable los litros con comando awk
    litros=$(echo $linea | awk {'print $2'})
    #Nos guardamos en una variable los dias con comando awk
    dias=$(echo $linea | awk {'print $1'})
    ((sumaLitros+=$litros));
    ((contaDias++))

done < ficheros_scripts/precipitaciones.txt

media=$(($sumaLitros/$contaDias))

echo "La media de las precipitaciones es $media"