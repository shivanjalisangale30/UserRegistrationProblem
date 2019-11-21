#!/bin/bash -x
echo "Welcome"

shopt -s extglob

echo "Enter your first name"
read fname

fname1="^[A-Z][a-zA-Z]{3,15}$"

 if [[ $fname =~ $fname1 ]]
     then 
      echo yes;
 else
       echo no;
 fi
