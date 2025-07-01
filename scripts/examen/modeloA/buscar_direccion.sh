#!/bin/bash
if [ $# -eq 3 ]
then
    echo "La dirección que quieres buscar es:"
    echo "###################################"  
    echo "Calle: $1"
    echo "Ciudad: $2"
    echo "Provincia: $3"
else
    echo "Error, escribe los tres argumentos"
fi

