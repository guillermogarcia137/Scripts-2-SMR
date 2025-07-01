#!/bin/bash
echo "Dime el nombre"
read archivo
if test -e $archivo
then
    if test -f $archivo
    then
        if test -w $archivo
        then  
            echo "$archivo existe y es un archivo regular con permisos de escritura"
        else
            echo "$archivo existe y es un archivo regular sin permisos de escritura"
        fi
    else
        if test -d $archivo
        then
            echo "$archivo existe y es un directorio"
        fi
    fi
else
echo "$archivo no existe"
fi