#!/bin/bash
i=0
while read line
do
#takes the input from read and creates an array
array[$i]=$line
((i+=1))
done
#prints the array, the @ syntax is calling for elements from:3:up to 8
echo ${array[@]:3:5}