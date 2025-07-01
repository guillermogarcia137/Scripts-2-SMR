archivo=../bien.txt

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