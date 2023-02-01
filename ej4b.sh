#!/bin/bash

directorio=$1

#comprobamos que el directorio del parametro exista
if [ ! -d "$directorio" ]; then
  echo "El directorio proporcionado no existe."
  exit 1
fi

#contamos los archivos.txt
count=$(find "$directorio" -name "*.txt" | wc -l)

#buscamos por nombre los archivos txt y los borramos
find "$directorio" -name "*.txt" -delete

echo "Borramos $count archivos del directorio $directorio"