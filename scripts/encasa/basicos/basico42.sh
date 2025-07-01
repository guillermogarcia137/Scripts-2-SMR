#!/bin/bash
PS3="Selecciona una opcion"

echo "------------"
echo "1)--FECHA---"
echo "------------"
echo "2)--LISTA---"
echo "------------"
echo "3)--ESPACIO-"
echo "------------"
echo "4)--SALIR---"
echo "------------"
read option
while [ $option -lt 4 ]
do
    case $option in 
        1)  
            echo ""
            echo "`date`"
            ;;
        2)
            echo ""
            echo "`ls`"
            ;;
        3)
            echo "Espacio: `df -h`"
            ;;
        4)
            echo "Adios"
            break
            ;;
        *)
            echo "Mal"
            ;;
    esac


echo ""
echo ""
echo ""
echo "------------"
echo "1)--FECHA---"
echo "------------"
echo "2)--LISTA---"
echo "------------"
echo "3)--ESPACIO-"
echo "------------"
echo "4)--SALIR---"
echo "------------"
read option

done