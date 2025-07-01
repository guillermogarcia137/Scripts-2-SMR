#!/bin/bash
echo "Introduce el nombre de un archivo o fichero"
read introducido
if test -e $introducido
then
    if test -f $introducido
    then
        if test -w $introducido
        then
            echo "$introducido existe y es un fichero regular con permisos de escritura"
        else
            echo "$introducido existe y es un fichero regular SIN permisos de escritura"
        fi
    else
        if test -d $introducido
        then
            echo "$introducido existe y es un directorio"
        fi
    fi
else
    echo "$introducido no existe"
fi