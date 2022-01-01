#! /bin/bash

# ECHO COMMAND 
echo hello world

# VARIABLES
# uppercase by convention 
# letters, numvers, underscores
NAME="Phillip"

echo "my name is ${NAME}"

# USER INPUT
read -p "enter your name: " USERNAME

echo "Hello, ${USERNAME}. It is nice to meet you."

#SIMPLE IF STATEMENT
ABOVE="as it is below"
if [ "$ABOVE" == "as it is below" ]
then 
    echo "so as it is above"
fi

# IF-ELSE STATMENT
read -p "is the door open or shut?: " DOOR
if [ "$DOOR" != "shut" ]
then 
    echo "the door is open!"
else
    echo  "the door is shut."
fi

# ELIF
read -p "are you a dog or a cat?: " VAR1
if [ "$VAR1" == "dog" ]
then 
    echo "whos a good boy!"
elif [ "$VAR1" == "cat" ]
then 
    echo "oh no, im allergic to cats"
else 
    echo "$VAR1, what is that?" 
fi

# COMPARISON
NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else 
    echo "$NUM1 is less than $NUM2"
fi
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2


# FILE CONDITIONS
 FILE="test.txt"
 if [ -e "$FILE" ]
 then
   echo "$FILE exists"
 else
   echo "$FILE does NOT exist"
 fi

# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable

# CASE STATMENTS
read -p "Do you know the planets in our solar system? Y/N " ANSWER
case "$ANSWER" in 
    [yY] | [yY][eE][sS])
        echo "nice"
        ;;
    [nN] | [nN][oO])
        echo "heres a hint. My Very Excellent Mother Just Served Us Noodles"
        ;;
    *) 
        echo "Please enter y/yes or n/no"
        ;;
    esac

#SIMPLE FOR LOOP

DIRS="north south east west"
for DIR in $DIRS
    do
        echo "go $DIR"
done

############# KEEP DISABLED UNLESS YOU KNOW WHAT YOU ARE DOING ####################

# FOR LOOP TO RENAME FILES note* COMMENTED OUT TO PREVENT FILES FROM BEING RENAMED 
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES  
#   do
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

# FOR LOOOP TO MOVE FILES WITH .TXT ENTENSION TO THE BASHSCRIPTS DIRECTORY NOTE* 
#FILES=$(ls *.txt)
# BASHDIR=/home/phillip/hackerRank/bashScripts
# for FILE in $FILES  
#   do
#     echo "moving $FILE to bashScripts directory"
#     mv $FILE $BASHDIR
# done

############# KEEP DISABLED UNLESS YOU KNOW WHAT YOU ARE DOING ####################


#WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
    do  
     echo "$LINE: $CURRENT_LINE"
     ((LINE++))
 done < "./1.txt"

# FUNCTION
function sayHello() {
    echo "hello world"
}

sayHello

# FUNCTION WITH PARAMETERS

function greet() {
    echo "Hello, I am $1 and I am doing $2."
}

greet "N00bz0r" "horribly well"

# CREATE FOLDER AND WRITE TO A FILE - GOOD FOR REPETITIVE TASKS
mkdir helloTest
touch "helloTest/world.txt"
echo "hello World" >> "helloTest/world.txt"
echo "created helloTest/world.txt"
