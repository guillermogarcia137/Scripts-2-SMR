#!/bin/bash

echo "dime tu numero"
read numero

echo $numero | grep -E "^[0-9]{4}$"

if [ $? -eq 0 ]
then
	echo "Bien"
else
	echo "Mal"
fi
