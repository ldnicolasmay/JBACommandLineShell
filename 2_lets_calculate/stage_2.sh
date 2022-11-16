#!/usr/bin/env bash

re='^-?[0-9]+ ?([-+/%]{1}|[*]{1,2}) ?-?[0-9]+$'

while true; do
    echo "Enter an arithmetic operation: "
    read -r input
    if [[ "$input" =~ $re ]]; then
        echo $(("$input"))
    else
        echo "Operation check failed!"
    fi
done

#re='^-?[0-9]+ ?([-+/%]{1}|[*]{1,2}) ?-?[0-9]+$'
#
#echo "Enter an arithmetic operation: "
#read -r input
#if [[ "$input" =~ $re ]]; then
#    echo $(("$input"))
#else
#    echo "Operation check failed!"
#fi
