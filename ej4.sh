#!/bin/bash

read -p "Introduce el numero de paquetes que deseas enviar: " paquetes

ping -n $paquetes 192.168.1.13 >> paquetes_listado.txt


