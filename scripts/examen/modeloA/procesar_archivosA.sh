#!/bin/bash
echo "Dime el directorio donde estan los archivos"
read archivo

if test -e $archivo
    if test -d $archivo
    then
        echo "$archivo es un directorio"
    else
        if test -f $archivo
        then
            echo "$archivo es un archivo regular"
            echo "Pesa `du $archivo`"
        fi
else
    echo "Este directorio no existe, vamos a usar el directorio actual"
    # aqui puede que vaya un pwd y se use 
fi