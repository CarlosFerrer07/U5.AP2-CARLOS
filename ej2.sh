#!/bin/bash

while read numero; do
    if [ $((numero % 2)) -eq 0 ]; then
        echo "el $numero es par"
        let pares=$pares+1;
    else
        echo "el $numero es impar"
        let impares=$impares+1;
    fi
done < ficheros_scripts/numeros.txt

echo "Hay $pares numeros pares y $impares numeros impares"