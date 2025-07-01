#!/bin/bash
#Coge argumento

directorio=$1

while true
#while if test ! -e $directorio
#aqui puedo poner esto ?
do 
    
    if test ! -e $directorio   #Este if va aqui o fuera del while ?
    then
        echo "Error, este directorio no existe"
        echo "Introduce otro directorio"
        read directorio
        break  # este break va aqui ?
        
    else
        echo "Bien"
        break
    fi
done

