#!/bin/bash


fichero=ips.txt

for variable in `cat $fichero`
do
    resultado=`echo $variable | grep -E "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$"`

    if [ $? -eq 0 ]
    then
	    echo "$variable"

    fi
done