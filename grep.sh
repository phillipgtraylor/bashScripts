#!/bin/bash
<< ////
Options Description
-c : This prints only a count of the lines that match a pattern
-h : Display the matched lines, but do not display the filenames.
-i : Ignores, case for matching
-l : Displays list of a filenames only.
-n : Display the matched lines and their line numbers.
-v : This prints out all the lines that do not match the pattern
-e exp : Specifies expression with this option. Can use multiple times.
-f file : Takes patterns from file, one per line.
-E : Treats pattern as an extended regular expression (ERE)
-w : Match whole word
-o : Print only the matched parts of a matching line,
 with each such part on a separate output line.

-A n : Prints searched line and nlines after the result.
-B n : Prints searched line and n line before the result.
-C n : Prints searched line and n lines after before the result.
////

 

#Syntax: grep "literal_string" filename
#seaches for lines with the literal string, note upper/lower case 
#grep "THIS" testGrep.txt

#Syntax: grep "string" FILE_PATTERN
#pulls lines with instances of this in multiple files with the same pattern
#grep "this" test*

#syntax: grep -i "string" FILE
#searches for given string reguardless of case type
#grep -i "this" testGrep.txt

#Syntax: grep "REGEX" filename
#Matching a regular expression in files
#grep "lines.*empty" testGrep.txt

#Syntax: grep -A <N> "string" FILENAME
#prints prints matched line with 3 lines after it
#grep -A 3 -i "example" testGrep3.txt

#Syntax: grep -B <N> "string" FILENAME
#Displays 2 lines before the specified N line
#grep -B 2 "single WORD" testGrep3.txt

#grep '\([0-9]\) *\1'
#Takes a digit ([0-9]), 
#remembers it (\...\), 
#looks for zero or more spaces ( *) 
#followed by a repeat of the stored digit (\1).
#good resources for syntax
#https://www.grymoire.com/Unix/Regular.html#TOC
#https://www.grymoire.com/Unix/sed.html


