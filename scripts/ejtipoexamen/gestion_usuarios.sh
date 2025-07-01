#!/bin/bash
archivo=bien.txt
usuario=ejemplo1
grupo=ejemplo1
grupos=/etc/group

crear_usuario(){
    resultado=`cat $grupos` | grep -E "[$2]"
    if [ $? -eq 0 ]
    then
        echo "El grupo existe"
    else
        echo "El grupo no existe, vamos a crearlo"
        echo `mkdir`
    fi
    if test -e /home/$1
    then
        echo "El usuario $1 existe"
    else
        echo "El usuario $1 no existe"
        echo "Vamos a crearlo"
        `sudo useradd $1`
        echo "Usuario creado"

    fi
}



echo "----------------------"
echo "Apartado A"
echo "----------------------"

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
echo ""
echo ""
echo "Apartado B"
echo ""
echo ""
echo `cat $archivo` | grep -E "[a-z0-9]{3,10}\:[admin|dev|hr|ventas]{1,}*,"

if [ $? -eq 0 ]
then
	echo "Bien"
else
	echo "Mal"
fi




crear_usuario $usuario $grupo