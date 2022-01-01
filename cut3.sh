#!/bin/bash
#this short script will print character 2 through 7
#of a user input to the command line. 

while read -p "please enter 7 or more characters, press control+c when finished " sentence;
do
echo $sentence | cut -c2-7
done


