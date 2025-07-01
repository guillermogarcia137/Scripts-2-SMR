#!/bin/bash
fichero1=ips1.txt
fichero2=ips2.txt
fichero3=ips3.txt

numeroips=0

for variable in `cat $fichero1` `cat $fichero2` `cat $fichero3`
do 
    ip=`echo $variable | grep -E "^[1-9]{1,3}\.{1}[1-9]{1,3}\.{1}[1-9]{1,3}\.{1}[1-9]{1,3}$"`
    if [ $? -eq 0 ]
    then
        numeroips=(($numeroips +1))        #aqui lo volvemos a guardar, para que no sea todo el rato 0 + 1, si no pusiese el primero numeroips de esta linea y le pusiese otro nombre, no lo estaria guardando
    fi                                                                                                                               
done
echo "$numeroips suman entre los tres"     