#!/bin/bash

echo "dime tu correo"
read correo

echo $correo | grep -E "^[a-z0-9]{2,}\@[a-z]{2,}\.{1}[a-z]{2,3}$"

if [ $? -eq 0 ]
then
	echo "Bien"
else
	echo "Mal"
fi
