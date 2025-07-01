#!/bin/bash
echo "Dime una IP: "
read ip
direccion=`echo $ip | grep -E "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$"`
if [ $? -eq 0 ]
then
    echo "La ip $ip esta bien"
else
    echo "La ip $ip esta mal, tiene que ser parecida e esta (192.168.0.1)"
fi