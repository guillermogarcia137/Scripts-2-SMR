#!/bin/bash
operar_archivo(){
    echo "El archivo es $1"
        case $2 in 
            1)
                echo "Que nombre quieres ponerle"
                read nombre
                echo "`mv $1 $nombre`"
                ;;
            2)
                echo "rm -r $1"
                echo "archivo eliminado"
                ;;
            3)
                echo "cat $1"
                ;;
            4)
                echo "Adios"
                ;;
            *)
                echo "Error, elige una opcion del uno al tres "
                ;;
        esac
#        done
    fi
}
PS3=Elige 
echo "Dime el nombre del archivo"
read nombre
if test -e $archivo
then




select accion in  "Renombrar" "Eliminar" "Listar" "Salir"
do
    operar_archivo $archivo $REPLY
done

