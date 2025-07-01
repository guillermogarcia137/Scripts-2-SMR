#!/bin/bash
#Coge argumento

directorio=$1

mover_archivo(){
    
}

# hay que comprobar el numero de argumentos   
while true
#while if test ! -e $directorio
#aqui puedo poner esto ?
do 
    if test    #Este if va aqui o fuera del while ?
    then
        echo "Error, este directorio no existe"
        echo "Introduce otro directorio"
        read directorio
        break  # este break va aqui ?
        
    else
    #    echo "Bien"
        break
    fi
done

#archivos=`ls $directorio` | grep -E "\.[a-z]{2-3}$"

for archivos in `ls $directorio`
do 
    echo "$archivos" | grep -E "[a-z0-9]{1,}\.[a-z]{2,3}$"   # aparte del echo que me sobra, el fichero.tar.gz no deberia ser correcto, por lo tanto algo esta mal
    #    echo "$archivos" | grep -E "[a-z0-9]{1,}\.[a-z]{2,3}$"
                #este funciona pero no esta bien
    if [ $? -eq 0 ]
    then
        echo "$archivos --> OK"
    else
        echo "$archivos --> KO"
    fi
done




