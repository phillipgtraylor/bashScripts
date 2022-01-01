#!/bin/bash

#reads and prints text from 1.txt to the terminal
#awk '{print;}' 1.txt

#reads and prints lines of text from 1.txt that have these vars
#awk '/to/ > /pleasure/' 1.txt

#reads and prints specified fields of text in terminal 
#awk '{print $2,$5;}' 1.txt

#reads and prints field 4, NF is a built in variable
# NF is a built in variable that represents the total number of fields in a record.
#awk '{print $4,$nf;}' 1.txt

#the begin section below will be executed first. 
#end actions will be performed after complting the reading and 
#the processing of lines from the input. 

#awk 'BEGIN {print "Name\tDesignation\tDepartment\tSalary";}
##{print $2,"\t",$3,"\t",$4,"\t",$NF;}
#END{print "Report Generated\n--------------";}' employee.txt

#here we are finding employees whos id is < 200
#awk '$1 >200' employee.txt

#checks the third field for "DBA" and prints the line if true
#awk '$3 ~/DBA/' employee.txt

#establishes count variable checks in Technology is in field 4
#if true, then adds one to count per instance
#prints out a string with count variable 
#awk 'BEGIN { count=0;}
#$4 ~ /Technology/ { count++; }
#END { print "Number of employees in the Technology Department = ",count;}' employee.txt

#if statement (conditionals) checking if fields 4 and 5 exist,
#awk '{
#    if ($4 == "" || $5 == "")
#    print "missing score 4 for,",$1,"please update";
#    }' student.txt

#here we are checking that the student marks were greater than or
#or equal to 35 and printing out pass or fail based on the conditional

#awk '{
#if ($3 >=35 && $4 >= 35 && $5 >= 35)
#	print $0,"=>","Pass";
#else
#	print $0,"=>","Fail";
#}' student.txt


#using if/else if/else to find the average grade rank of the students

#awk '{
#total=$3+$4+$5;
#avg=total/3;
#if ( avg >= 90 ) grade="A";
#else if ( avg >= 80) grade ="B";
#else if (avg >= 70) grade ="C";
#else grade="D";

#print $0,"=>",grade;
#} ' student.txt

awk 'ORS=NR%3?",":"\n"' student.txt