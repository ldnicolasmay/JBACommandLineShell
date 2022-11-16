#!/usr/bin/env bash

re='^-?[0-9]+\.?[0-9]* ?[-+/*%^] ?-?[0-9]+\.?[0-9]*$'
HIST_FILE="./operation_history.txt"

> "$HIST_FILE"

echo "Welcome to the basic calculator!" | tee -a "$HIST_FILE"

while true; do
    echo "Enter an arithmetic operation or type 'quit' to quit:" | tee -a "$HIST_FILE"
    read -r input
    echo "$input" >> "$HIST_FILE"
    if [[ "$input" =~ $re ]]; then
        bc -l <<< "scale=2; $input" | tee -a "$HIST_FILE"
    elif [[ "$input" == "quit" ]]; then
        echo "Goodbye!" | tee -a "$HIST_FILE"
        exit 0
    else
        echo "Operation check failed!" | tee -a "$HIST_FILE"
    fi
done
