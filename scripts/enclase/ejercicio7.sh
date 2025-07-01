#!/bin/bash
numero=$((RANDOM % 10 + 1))
intentos=1400
introducido=0

echo "Hola, tienes que adivinar un numero entre 1 y 10"
echo "------------------------------------------------"

while [ $introducido -ne $numero ]
do
    echo "------------Dime un numero----------------------"
    read introducido
    intentos=$((intentos+1))    
    if [ $introducido -lt $numero ] 
    then
        echo "El numero es mas grande"
    fi
    if [ $introducido -gt $numero ]
    then
        echo "El numero es mas pequeño" 
    fi
    if [ $introducido -eq $numero ]
    then
        echo "Correcto"
        echo "Dabutin, has tardado $intentos"
    fi

done

