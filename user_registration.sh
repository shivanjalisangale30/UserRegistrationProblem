#!/bin/bash -x
echo "Welcome"

shopt -s extglob

#echo "Enter your first name"
#read fname
echo "Enter your last name"
read lname

fname1="^[A-Z][a-zA-Z]{3,15}$"
lname1="^[A-Z][a-zA-Z]{3,15}$"

 if [[ $lname =~ $lname1 ]]
     then 
      echo yes;
 else
       echo no;
 fi
