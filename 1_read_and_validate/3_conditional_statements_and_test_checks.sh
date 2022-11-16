#!/usr/bin/env bash

###
# Integer comparison
###

# equals, ==
if [ 1 -eq 1 ]
then
  echo "1 -eq 1"
else
  echo "not: 1 -eq 1"
fi

# not equals, !=
if [ 1 -ne 1 ]
then
  echo "1 -ne 1"
else
  echo "not: 1 -ne 1"
fi

# greater than, >
if [ 1 -gt 1 ]
then
  echo "1 -gt 1"
else
  echo "not: 1 -gt 1"
fi

# less than or equal to, <=
if [ 1 -le 1 ]
then
  echo "1 -le 1"
else
  echo "not: 1 -le 1"
fi


###
# String comparison
###

# equals: ==
if [ "foo" == "foo" ]
then
  echo '"foo" == "foo"'
else
  echo 'not: "foo" == "foo"'
fi

# not equals: !=
if [ "foo" != "foo" ]
then
  echo '"foo" != "foo"'
else
  echo 'not: "foo" != "foo"'
fi

# greater than: >
if [ "foo" > "foo" ]
then
  echo '"foo" > "foo"'
else
  echo 'not: "foo" > "foo"'
fi

# String is null: -z
if [ -z "foo" ]
then
  echo '-z "foo"'
fi

if [ -z "" ]
then
  echo '-z ""'
fi

# String is not null: -n
if [ -n "foo" ]
then
  echo '-n "foo"'
fi

#######
# Files
#######

# True if file exists: -e
if [ -e "/home/hynso/.zshrc" ]
then
  echo '-e "/home/hynso/.zshrc"'
fi

# True if file is a directory: -d
if [ -d "/home/hynso" ]
then
  echo '-d "/home/hynso"'
fi

# True if the file is not empty (non-zero byte file): -s
if [ -s "/home/hynso/.zshrc" ]
then
  echo '-s "/home/hynso/.zshrc"'
fi


###
# Logical operators

# NOT: !
if [ ! -s "/home/hynso/.sudo_as_admin_successful" ]
then
  echo '[ ! -s "/home/hynso/.sudo_as_admin_successful" ]'
fi

# AND: -a
if [ "foo" == "foo" -a "bar" == "bar" ]
then
  echo "[ "foo" == "foo" -a "bar" == "bar" ]"
fi

# OR: -o
if [ "foo" == "bar" -o "baz" == "baz" ]
then
  echo "[ "foo" == "bar" -o "baz" == "baz" ]"
fi


# Checking the password entered by user
echo "Enter password: "
read -r input
if [ "$input" = "Pass!@#" ]
then
  echo "Correct password entered"
else
  echo "Incorrect password entered"
fi


# elif
num1=20
num2=10

if [ "$num1" -eq "$num2" ]
then
  echo "Numbers are equal"
elif [ "$num1" -gt "$num2" ]
then
  echo "First number is greater"
else
  echo "Second number is greater"
fi


