#!/bin/bash
archivoquemuevo=ejemplo1.txt

mover_archivo(){
    #archivo=$1
    extension=$(awk -F\. '{print $NF}' <<< $1)
    #extension=`awk -F\. '{print $NF}' <<< $1`
    # si que funciona pero pone los colores del vs code mal
    echo $extension
    echo $1

    echo "$extesion" | grep -E "[txt]{1}$"
    if [ $? -eq 0 ]
    then
        `mv $1 documentos/`
    fi
        echo "$extesion" | grep -E "[sh]{1}$"
        if [ $? -eq 0 ]
        then
            `mv $1 scripts/`
        fi
            echo "$extesion" | grep -E "[png]{1}$"
            if [ $? -eq 0 ]
            then
                `mv $1 imagenes/`
            #else
               # `mv $1 otros/`
            fi
        
    
}

mover_archivo $archivoquemuevo
