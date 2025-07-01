#!/bin/bash
directorio=$1
#echo "Dime el directorio"
#read directorio

if test -e $directorio
then
    echo "Este directorio no existe, vamos a usar el directorio actual"
    directorio=`pwd`
fi
echo "$directorio"

for archivos in `ls $directorios`
do
    echo $archivos
    if test -d $archivos
    then
        echo "Es un directorio"
    else
        if test -f $archivos 
        then
            echo "Es un archivo regular"
            echo `du $archivos`
        else    
            echo "Error"
        fi
    fi
done 
