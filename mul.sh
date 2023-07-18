#!/bin/bash

# Prendi gli operandi come argomenti
operand1=$1
operand2=$2

# Effettua la moltiplicazione
result=$(($operand1 * $operand2))

# Restituisci il risultato
echo $result
