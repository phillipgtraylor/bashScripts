#!/bin/bash
#determines what the type of triangle the 3 inputs represent
echo "input triable side lengths"
read x
read y
read z


if [[ $x == $y && $x == $z ]]
then
	echo "EQUILATERAL"
elif [[ $x == $y || $x == $z || $x == $z ]] 
then
	echo "ISOCELES"
else 
	echo "SCALENE"
fi


#END
