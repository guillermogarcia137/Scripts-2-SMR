#!/bin/bash

asiento1=0
asiento2=0
asiento3=0
asiento4=0
asiento5=0
asiento6=0
asiento7=0
asiento8=0
asiento9=0
asiento10=0

numeroasientos=10

while [ $numeroasientos -ne 0 ]
do
    echo "Quedan $numeroasientos asientos libres"

    echo "Elige un asiento del 1 al 10"
    read asientoelegido

    case $asientoelegido in 
        1)
            if [ $asiento1 -eq 0 ] 
            then
                asiento1=$(($asiento1 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        2)
            if [ $asiento2 -eq 0 ] 
            then
                asiento2=$(($asiento2 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        3)
            if [ $asiento3 -eq 0 ]
            then
                asiento3=$(($asiento3 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        4)
            if [ $asiento4 -eq 0 ]
            then
                asiento4=$(($asiento4 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        5)
            if [ $asiento5 -eq 0 ] 
            then
                asiento5=$(($asiento5 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        6)
            if [ $asiento6 -eq 0 ]
            then
                asiento6=$(($asiento6 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        7)
            if [ $asiento7 -eq 0 ]  
            then
                asiento7=$(($asiento7 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        8)
            if [ $asiento8 -eq 0 ]
            then
                asiento8=$(($asiento8 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        9)
            if [ $asiento9 -eq 0 ] 
            then
                asiento9=$(($asiento9 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        10)
            if [ $asiento10 -eq 0 ]
            then
                asiento10=$(($asiento1 +1))
                echo "Vale, te lo he asignado"
                numeroasientos=$(($numeroasientos -1))
            else
                echo "Este esta ocupado, elige otro"
            fi
            ;;
        *)
            echo "Error, elige un numero del 1 al 10"
            ;;
    esac
done
echo "Ya no quedan asientos libres"
