#!/bin/bash
archivo=../bien.txt
grupos=/etc/group
usuarios=/etc/passwd
lineasignoradas=0


crear_usuario(){
    resultado=`cat $archivo` | grep -E "[$2]"
    if [ $? -eq 0 ]
    then
        echo "El grupo existe"
    else
        echo "El grupo no existe, vamos a crearlo"
        echo "`sudo groupadd $2`"
    fi
    resultadousuario=`cat $usuarios` | grep -E "[$1]"
    if [ $? -eq 0 ]
    then
        echo "El usuario $1 existe"
        echo "Vamos a añadirlo a el grupo"
        echo "`sudo adduser $1 $2`"
    else
        echo "El usuario $1 no existe"
        echo "Vamos a crearlo"
        echo "`sudo useradd $1`"
        echo "Usuario creado, vamos a añadirlo al grupo"
        echo "`sudo adduser $1 $2`"
    fi
}
echo "Tu archivo es $archivo" #esto no lo pide el ejercicio 

if test -e $archivo
then
    echo "EL archivo $archivo existe"

else
    
    while true
    do
        if test ! -e $archivo
        then
            echo "Error VADILLO07, este archivo no existe, dime otro que exista"
            read archivo
        else
            echo "Bien"
            break
        fi
    done
fi
for $linea in `cat $archivo`
do
	expresion=`echo $linea | grep -E "[a-z0-9]{3,10}\:[admin|dev|hr|ventas]{1,}*,"`

	if [ $? -eq 0 ]
	then
		echo "$linea --- OK"

	else
		echo "$linea --- KO"
        lineasignoradas=$((lineasignoradas + 1))
	fi
done

echo "Se han ignorado $lineasignoradas lineas"
