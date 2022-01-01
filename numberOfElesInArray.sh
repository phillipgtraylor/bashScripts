#!/bin/bash
for element in `cat`; do
#we store the inputs or "elements" into an 
#array that were printed out above
    declare -a array1=(${array1[*]} $element)
done
# the "#" syntax calls for the number of #elements in an array
echo ${#array1[@]}