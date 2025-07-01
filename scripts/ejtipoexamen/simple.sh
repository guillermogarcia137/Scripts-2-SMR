usuario=usu3
grupo=grupomermelada
grupos=/etc/group


simple(){
    resultado=`cat $grupos` | grep -E "[$1]"
    if [ $? -eq 0 ]
    then
        echo "El grupo $1 existe"
    else
        echo "El grupo $1 NO existe"
    fi

}

simple prueba2