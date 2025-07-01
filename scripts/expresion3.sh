#!/bin/bash

echo "dime tu ip"
read ip

echo $ip | grep -E "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$"

if [ $? -eq 0 ]
then
	echo "Bien"
else
	echo "Mal"
fi
