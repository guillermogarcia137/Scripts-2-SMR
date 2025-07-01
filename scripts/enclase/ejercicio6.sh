#!/bin/bash
directorio=backup
fichero=ejemplo1.sh
fichero2=ejfor.sh
fichero3=este-no-existe

for archivo in $fichero $fichero2 $fichero3
do

    if test -e $archivo
    then
    echo "el archivo existe"
        if test ! -w $archivo
        then
            echo "no tiene permisos de escritura"
        else
        echo "tiene permisos de escritura"
            if test ! -e $directorio
            then
                `mkdir $directorio`
                `cp $archivo $directorio/$archivo`
                echo "creado y movido"
            else
                `cp $archivo $directorio/$archivo`
                echo "movido"
            fi
        fi
    else
        echo "El archivo no fue encontrado"
    fi
done