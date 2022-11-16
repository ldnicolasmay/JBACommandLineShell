#!/usr/bin/env bash

#echo "You provided $# facts about yourself!"
#echo "Your name is $1"
#echo "Your age is $2"

#echo "$*"  # all args collapsed to single string
#echo "$@"  # all args in array

# processing the user's data
personal_data() {
  #echo "You provided $# facts about yourself!"
  echo "Your name is $1"
  echo "Your age is $2"
}

# personal_data "Nic" 42

hello() (
  echo "Hello, user ${1}!"
)
