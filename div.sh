#!/bin/bash
# Divide il primo numero per il secondo
if [ $2 -ne 0 ]; then
    echo $(($1 / $2))
else
    echo "Impossibile dividere per zero"
fi
