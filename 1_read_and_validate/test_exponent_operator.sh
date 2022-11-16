#!/usr/bin/env bash

re="^([-+/]{1}|[*]{1,2})$"

while true
do
  echo "Enter operator:"
  read -r input
  if [[ "$input" =~ $re ]]
  then
    echo "${input} match"
  elif [ "$input" == "exit" ] || [ "$input" == "quit" ]
  then
    exit 0
  else
    echo "${input} no match"
  fi
done
