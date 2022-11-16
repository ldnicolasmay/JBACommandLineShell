#!/usr/bin/env bash

echo $(( 10 + 3 ))
echo $(( 10 - 3 ))
echo $(( 10 * 3 ))
echo $(( 10 / 3 ))  # floor division
echo $(( 10 % 3 ))
echo $(( 10 ** 3 ))
echo

x=$(( (1 + 2) * 3 ))
echo $(( x += 4 ))
x=$(( (1 + 2) * 3 ))
(( x += 4 ))
echo "$x"

x=$(( (1 + 2) * 3 ))
echo $(( x -= 4 ))
x=$(( (1 + 2) * 3 ))
echo $(( x *= 4 ))
x=$(( (1 + 2) * 3 ))
echo $(( x /= 4 ))
x=$(( (1 + 2) * 3 ))
echo $(( x %= 4 ))
echo

i=0
while [[ i -lt 5 ]]
do
  echo "$i"
  (( i++ ))
done

