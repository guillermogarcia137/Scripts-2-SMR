#!/bin/bash
echo "Dime un comando"
read comando
$comando
if [ $? -eq 0 ];
then
    echo "Correcto, codigo de retorno $?"
else
    echo "Error, codigo de retorno $?"
fi
