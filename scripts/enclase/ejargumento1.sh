#!/bin/bash
echo "El comandos es: " $0
echo "Los argumentos son: " $*
echo "En total hay " $# "argumentos"
shift                                                                
echo $1 $2 $3
