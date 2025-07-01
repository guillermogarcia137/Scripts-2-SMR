
usuario=usu3
grupo=grupoquenoexiste2
grupos=/etc/group
#gruposgpt=cut -d: -f1 /etc/group

crear_usuario(){
    resultado=`cat $grupos` | grep -E "[$2]"
    if [ $? -eq 0 ]
    then
        echo "El grupo $2 existe"
        if test -e /home/$1                
        then
            echo "El usuario $1 existe"
        else
            echo "El usuario $1 no existe"
            echo "Vamos a crearlo"
            `sudo useradd $1`
            echo "Usuario creado"
            `sudo adduser $1 $2`
            echo "Usuario $1 añadido al grupo $2"
    fi
    else
        echo "El grupo no existe, vamos a crearlo"
        echo "`sudo groupadd $2`"
        echo "grupo creado"

    fi
}

crear_usuario $usuario $grupo
