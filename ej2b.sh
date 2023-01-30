#!/bin/bash

diasNombre=("Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado" "Domingo")

while read linea; do
    #Extraemos los litros
    litros=$(echo $linea | awk {'print $2'})
    #Extraemos los dias
    dias=$(echo $linea | awk {'print $1'})
    dia=$(( ($dias-1) % 7 )) #como hay 10 dias y el dia 9 que supera las posiciones del array no llovio, calculamos el resto de los dias entre 7 y des esta manera sacamos la posicion que toca
    nombreDia=${diasNombre[$dia]}

    if [ $litros -eq 0 ]; then
        echo "El $nombreDia llovio $litros litros, es decir no llovio"
    fi;

done < ficheros_scripts/precipitaciones.txt


