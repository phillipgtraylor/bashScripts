#!/bin/bash

var1=abcdefghijklmno
cut -c4,6 1.txt

echo 1.txt
#command below allows for the selection of 
# a variable becaus the cut command automatically
#is expecting a .txt file
#$ echo $(cut -c 18-53 <<<"$var")
