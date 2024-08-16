#!/bin/bash

check_password() {
    local password="$1"

    # Verifica si la longitud es menor a 8 caracteres
    if [[ ${#password} -lt 8 ]]; then
        echo "Débil: La contraseña debe tener al menos 8 caracteres."
        return 1
    fi

    # Verifica si contiene al menos un número
    if ! [[ "$password" =~ [0-9] ]]; then
        echo "Débil: La contraseña debe contener al menos un número."
        return 1
    fi

    # Verifica si contiene al menos uno de los caracteres especiales permitidos
    if ! echo "$password" | grep -q '[@#$%&*+=-]'; then
        echo "Débil: La contraseña debe contener al menos uno de los siguientes caracteres: @, #, $, %, &, *, +, -, ="
        return 1
    fi

    echo "Fuerte: La contraseña es valida."
    return 0
}

# Llama a la función de validación con la contraseña proporcionada
check_password "$1"
