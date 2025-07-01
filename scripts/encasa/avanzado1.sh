#!/bin/bash
PS3="Dime la opción: "

select option in "Listar" "Fecha" "Crear" "Salir"

do
case $REPLY in
        
        1)
            echo "El contenido es:" `ls`
            ;;
        2)
            echo `date`
            ;;
        3)
            echo "Vamos a crear un archivo"
            echo "------------------------"
            echo "Dime el nombre del archivo"
            read archivo
            echo `touch $archivo`
            ;;
        4)
            echo "Adios"
            break
            ;;
        *)
            echo "Error, elige una opción del 1 al 4"
            ;;
    esac
done