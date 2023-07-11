#!/bin/bash

# Esegue l'operazione corretta
if [ "$1" == "+" ]; then
    ./add.sh $2 $3
elif [ "$1" == "-" ]; then
    ./sub.sh $2 $3
elif [ "$1" == "x" ]; then
    ./mul.sh $2 $3
elif [ "$1" == "/" ]; then
    ./div.sh $2 $3
else
    echo "Operatore non riconosciuto"
fi
