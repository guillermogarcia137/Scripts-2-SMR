usuario=ejemplo1
grupo=ejemplo101
grupos=/etc/group
usuarios=/etc/passwd

crear_usuario(){
    resultado=`cat $grupos` | grep -E "[$2]"
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

echo "$resultado $resultadousuario"
}


crear_usuario $usuario $grupo