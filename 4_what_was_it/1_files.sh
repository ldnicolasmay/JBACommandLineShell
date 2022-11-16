#!/usr/bin/env bash

#######
# for loop over set of values

for i in 1 2 3 4 5; do
    #echo "$i"
    printf "%s " "$i"
done; echo

for i in 5 4 3 2 1 2 3 4 5; do
    # echo "$i"
    printf "%s " "$i"
done; echo

for name in John Jack Mary; do
    printf "%s " "$name"
done; echo


#######
# for loop over range

for i in {0..4}; do
    #echo "$i"
    printf "%s " "$i"
done; echo

for i in {0..10..2}; do
    #echo "$i"
    printf "%s " "$i"
done; echo


#######
# for loop over seq command

for i in $(seq 1 2 10); do
    echo "Number: $i"
done; echo

for i in $(seq -s " " -f "%04g" 1 2 10); do
    echo "Number: $i"
done; echo


#######
# while loop
i=0
while [[ $i -lt 5 ]]; do
    echo "i=$i"
    i=$((i + 1))
done; echo "==="
# above is same as below
i=0
while [[ $i -lt 5 ]]; do
    echo "i=$((i++))"
done; echo

i=0
while [[ $i -lt 5 ]]; do
    i=$((i + 1))
    echo "i=$i"
done; echo "==="
# above is same as below
i=0
while [[ $i -lt 5 ]]; do
    echo "i=$((++i))"
done; echo


#######
# Conditional loop control
for i in $(seq 1 5); do
    if [ "$i" -eq 4 ]; then
        break
    fi
    echo "Number: $i"
done; echo

for i in $(seq 1 10); do
    if [ "$i" -ge 4 ] && [ "$i" -le 6 ]; then
        continue
    else
        echo "Number: $i"
    fi
done; echo


for i in $(seq "$1" "$2"); do
    echo "$i"
done; echo







