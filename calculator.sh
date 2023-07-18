#!/bin/bash

solve_expression() {
    local expression="$1"

    # se l'espressione è un numero, restituiscila come tale
    if [[ $expression =~ ^[0-9]+$ ]]; then
        echo "$expression"
    else
        local operator=${expression:0:1}
        local operand1=${expression:2}
        operand1=${operand1%%,*}
        local operand2=${expression#*,}
        operand2=${operand2%%)*}

        # se gli operandi non sono numeri, risolvi l'espressione annidata
        if ! [[ $operand1 =~ ^[0-9]+$ ]]; then
            operand1=$(solve_expression "$operand1")
        fi
        if ! [[ $operand2 =~ ^[0-9]+$ ]]; then
            operand2=$(solve_expression "$operand2")
        fi

        case $operator in
            "+")
                result=$(./add.sh $operand1 $operand2)
                ;;
            "-")
                result=$(./sub.sh $operand1 $operand2)
                ;;
            "x")
                result=$(./mul.sh $operand1 $operand2)
                ;;
            "/")
                if [ $operand2 -eq 0 ]; then
                    echo "Errore: divisione per zero."
                    exit 1
                else
                    result=$(./div.sh $operand1 $operand2)
                fi
                ;;
            *)
                echo "Operatore non valido: $operator"
                exit 1
        esac

        echo "$result"
    fi
}

expression="$1"
result=$(solve_expression "$expression")  # Added double quotes around $expression

echo "Risultato: $result"
