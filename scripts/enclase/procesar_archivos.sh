#!/bin/bash
directorio=`pwd`
if test $# -eq 1 
then
    if test -e $1 
    then
        directorio=$1                                              
    else
        echo "Este no existe, vamos a coger el actual"
    fi
else
directorio=`pwd`
fi

echo "Procesado en $directorio"
for option in `ls $directorio`
do 
    echo "Nombre: $option"
    if test -d $option
    then
        echo "Tipo: Directorio"
    else
        if test -f $option
        then
            echo "Tipo: Archivo regular"
            echo "Pesa: `du -k`"
        fi
    fi
done


