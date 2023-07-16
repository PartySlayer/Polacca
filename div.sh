#!/bin/bash

# Prendi gli operandi come argomenti
operand1=$1
operand2=$2

# Controllo se l'operando2 è 0 per evitare divisione per zero
if [ $operand2 -eq 0 ]; then
    echo "Errore: Divisione per zero!"
    exit 1
fi

# Effettua la divisione
result=$(($operand1 / $operand2))

# Restituisci il risultato
echo $result
