#!/bin/bash
#read user input
while read userInput
#print fields 1-3 of userInput and cut rest
do
    echo "$userInput" | cut -f 1-3
done