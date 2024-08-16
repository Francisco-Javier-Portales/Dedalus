#!/bin/bash

is_integer_string () {
    #Verifica si el argumento es un número entero
    if [[ "$1" =~ ^-?[0-9]+$ ]]; then
        return 0  #VERDADERO: es un número entero
	elif [[ "$1" =~ ^-?[0-9]*\.[0-9]+$ ]]; then
        return 2  # NO ES ENTERO NI CADENA: es un número de otro tipo
    else
        return 1  #FALSO: es una cadena
    fi
}

is_integer_string "$1"
result=$?

case $result in
    0)
        echo "VERDADERO: El argumento es un número entero."
        ;;
    1)
        echo "FALSO: El argumento es una cadena."
        ;;
    2)
        echo "NO ES ENTERO NI CADENA: es un número de otro tipo."
        ;;
esac

