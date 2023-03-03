#!/usr/bin/env bash

echo BIENVENIDO AL JUEGO DE LA ADININANZA
echo TIENES 3 INTENTOS PARA ADIVINAR EL NUMERO, SI NO LAMENTABLEMENTE PIERDES!
echo HERE WE GOOO!
# Definimos el número a adivinar
numero_secreto=8

# Definimos el número máximo de intentos
intentos_maximos=3

# Iniciamos el ciclo para los tres intentos
for (( i=1; i<=$intentos_maximos; i++ ))
do
    # Pedimos al usuario que ingrese un número
    read -p "Ingrese un número: " numero_adivinar

    # Verificamos si el número ingresado es igual al número secreto
    if [ $numero_adivinar -eq $numero_secreto ]
    then
        echo "FELICIDADES, USTED ADIVINO EL NUMERO!"
        exit 0
    else
        echo "FALLASTE. ONLY $((intentos_maximos-i)) intento(s). LEFT"
    fi
done

# Si el usuario no logró adivinar el número en los tres intentos, mostramos un mensaje de error
echo "FALLASTE TODOS LOS INTENTOS, LO SENTIMOS. ESTE $numero_secreto. ERA EL NUMERO SECRETO"
exit 0
