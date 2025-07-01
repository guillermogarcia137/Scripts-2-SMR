#!/bin/bash
administrar_archivo(){
option=$2
archivo=$1

#Preguntar a la profe si ponemos -f tambien 
    
        case $option in
            1)
                if test -e $archivo
                then
                    echo "este archivo ya existe"
                else
                    echo "`touch $archivo`"
                    echo "Se ha creado el archivo"
                fi
                ;;
            2)
                if test ! -e $archivo
                then
                    echo "El archivo $archivo no existe"
                else
                    `rm $archivo`
                    echo "Archivo borrado"
                fi
                ;;
            3)
                if test ! -e $archivo
                then
                    echo "El archivo $archivo no existe"
                else
                    echo `cat $archivo`
                    
                fi
                ;;
            4)
                echo "Adios"
                break
                ;;
            *)
                echo "Error, elige una opcion del uno al cuatro"
                ;;

                
        esac
    
}
PS3="Vadillo es tonto: "
    echo "Dime el nombre del archivo"
    read archivo

select option in "Crear" "Eliminar" "Listar" "Salir"
    do


administrar_archivo "$archivo" "$REPLY"
done
