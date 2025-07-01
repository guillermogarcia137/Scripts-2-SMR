#!/bin/bash
while true
do

echo "----------------------------"
echo "----------------------------"
echo "Selecciona una opcion"
echo "----------------------------"
echo "1) Mostrar la fecha actual"
echo "----------------------------"
echo "2) Mostrar la lista de archivos"
echo "----------------------------"
echo "3) Mostrar el espacio"
echo "----------------------------"
echo "4) Salir"
echo "----------------------------"
echo "----------------------------"

read option
case $option in 
    1)
        echo""
        echo""
        echo""
        date
        echo""
        echo""
        echo""

        ;;

    2)
        ls
        ;;

    3)
        df -h
        ;;
    4)
        echo "Adios"
        break 
        ;;
    *)
        echo "Error"
        ;;
esac
done