#!/bin/bash
echo "Introduce un comando"
read comando
echo `$comando`
if [ $? -eq 0 ]
then
    echo "El comando se ejecuto con exito, codigo de error $?"
else
    echo "Error, codigo de error $?"
fi