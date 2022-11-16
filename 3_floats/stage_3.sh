#!/usr/bin/env bash

re='^-?[0-9]+\.?[0-9]* ?[-+/*%^] ?-?[0-9]+\.?[0-9]*$'

while true; do
    echo "Enter an arithmetic operation:"
    read -r input
    if [[ "$input" =~ $re ]]; then
        bc -l <<< "$input"
    elif [[ "$input" == "exit" ]] || [[ "$input" == "quit" ]]; then
        exit 0
    else
        echo "Operation check failed!"
    fi
done

re='^-?[0-9]+\.?[0-9]* ?[-+/*%^] ?-?[0-9]+\.?[0-9]*$'

echo "Enter an arithmetic operation:"
read -r input
if [[ "$input" =~ $re ]]; then
    bc -l <<< "scale=2; $input"
else
    echo "Operation check failed!"
fi
