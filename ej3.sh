#!/bin/bash

#inicializamos contadores para Linux y Windows
usuariosLinux=0
usuariosWindows=0

#inicializamos contadores para procesos

procesosLinux=0
procesosWindows=0

while read linea; do

    #extraemos el sistema operativo
    sistemaOp=$(echo $linea | awk {'print $2'}) #OJO CARLOS, EL ESPACIO DE AWK ES NECESARIO
    #extraemos los procesos
    procesos=$(echo $linea | awk {'print $3'})

    if [ "$sistemaOp" = "Linux" ]; then
        ((usuariosLinux++))
        ((procesosLinux+=$procesos))
    elif [ "$sistemaOp" = "Windows" ]; then
        ((usuariosWindows++))
        ((procesosWindows+=$procesos))
    fi
done < ficheros_scripts/listado.txt

echo "Hay un total de $usuariosLinux usuarios de Linux"
echo "Hay un total de $usuariosWindows usuarios de Windows"

echo "Hay un total de $procesosLinux procesos de Linux"
echo "Hay un total de $procesosWindows procesos de Windows"

