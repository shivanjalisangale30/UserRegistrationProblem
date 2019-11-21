#!/bin/bash -x
echo "Welcome"

shopt -s extglob

echo "Enter your first name"
read firstName
echo "Enter your last name"
read lastName
echo "Enter your email id"
read email

firstName1="^[A-Z][a-zA-Z]{3,15}$"
lastName1="^[A-Z][a-zA-Z]{3,15}$"
email1="^([0-9a-zA-Z]+)([_+-.][0-9a-zA-Z])?[@][0-9a-zA-Z]+([.][a-z]{2,4})([.][a-z]{2})?$"


function firstName()
{
  if [[ $firstName =~ $firstName1 ]]
     then 
      echo "Enter valid first name"
  else
       echo "Enter invalid fisrt name"
  fi
}

function lastName()
{
  if [[ $lastName =~ $lastName1 ]]
     then 
      echo "Enter valid last name"
  else
       echo "Enter invalid last name "
  fi
}

function emailId()
{
   if [[ $email =~ $email1 ]]
      then
      echo "Enter valid email"
   else
      echo "Enter invalid email"
   fi
}

firstName
lastName
emailId
