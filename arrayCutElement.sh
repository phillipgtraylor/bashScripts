#!/bin/bash

#create array from input
while read word; do
    array=(${array[*]} $word)
done
#goes through elements in the array
#created above and selects elements with A or a using grep
for var in ${array[*]}; do
    if echo $var | grep 'A' > /dev/null ; then
        continue
    elif echo $var | grep 'a'> /dev/null; then 
        continue
    else
#since we have no more elements with A, or a,
#then we echo var, the remaining elements of array
        echo $var
    fi
done