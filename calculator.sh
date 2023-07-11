#!/bin/bash

# Controlla se ci sono abbastanza argomenti
if [ $# -ne 3 ]; then
    echo "Sono necessari tre argomenti: (num1,num2) operatore"
    exit 1
fi

# Estrae i numeri dalle parentesi
nums=$(echo $1 | tr -d '()' | tr ',' ' ')

# Ottiene l'operatore
operator=$2

# Esegue l'operazione corretta
<<<<<<< HEAD
if [ "$operator" == "+" ]; then
    ./add.sh $nums
elif [ "$operator" == "-" ]; then
    ./sub.sh $nums
elif [ "$operator" == "*" ]; then
    ./mul.sh $nums
elif [ "$operator" == "/" ]; then
    ./div.sh $nums
=======
if [ "$1" == "+" ]; then
    ./add.sh $2 $3
elif [ "$1" == "-" ]; then
    ./sub.sh $2 $3
elif [ "$1" == "x" ]; then
    ./mul.sh $2 $3
elif [ "$1" == "/" ]; then
    ./div.sh $2 $3
>>>>>>> 14cb687b009a20c6b1bc03f653d227753fc6981f
else
    echo "Operatore non riconosciuto"
fi
