#!/usr/bin/env bash

#re="^([-+/]{1}|[*]{1,2})$"
re='^-?[0-9]+ ?([-+/%]{1}|[*]{1,2}) ?-?[0-9]+$'

while true
do
  echo "Enter an arithmetic operation: "
  read -r input
  if [[ "$input" =~ $re ]]
  then
    echo "Operation check passed!"
    echo $(("$input"))
  else
    echo "Operation check failed!"
  fi
done

## Submitted code
#echo "Enter an arithmetic operation: "
#read -r input
#if [[ "$input" =~ $re ]]
#then
#  echo "Operation check passed!"
#else
#  echo "Operation check failed!"
#fi
