#!/bin/bash
#this snippet of code with read the var one which is user input based
#it will recognize the space(" ") and cut it and print the fourth field

while read var1
    do
        echo $var1 | cut -d " " -f 4
done