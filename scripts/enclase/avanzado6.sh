#!/bin/bash
numerouno= 1
numerodos= 2

calcular_suma() {
    return `expr $1 + $2`
    #resultado= echo "`expr $1 + $2`"

}

calcular_suma "$numerouno" "$numerodos" 
echo $?