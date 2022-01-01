#!/bin/bash

#this file requires and input
#use a simple for loop, the while syntax #drops the last element
#the `cat` syntax prints the inputs
for element in `cat`; do
#we store the inputs or "elements" into an 
#array that were printed out above
    declare -a array1=(${array1[*]} $element)
    
done
#we make a new variable and make its value 
#eqaul to the value of the array, "array1"
#above, 3 times. 
arrayx3=("${array1[@]}" "${array1[@]}" "${array1[@]}")
#we use echo to print the "arrayx3 below."
echo "${arrayx3[@]}"
   