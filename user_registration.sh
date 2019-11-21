#!/bin/bash -x
echo "Welcome"

shopt -s extglob

echo "Enter your first name"
read firstName
echo "Enter your last name"
read lastName

firstName1="^[A-Z][a-zA-Z]{3,15}$"
lastName1="^[A-Z][a-zA-Z]{3,15}$"

 if [[ $firstName =~ $firstName1 && $lastName =~ $lastName1 ]]
     then 
      echo yes;
 else
       echo no;
 fi
