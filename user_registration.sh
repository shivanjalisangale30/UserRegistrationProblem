#!/bin/bash -x
echo "Welcome"

shopt -s extglob

echo "Enter your first name"
read firstName
echo "Enter your last name"
read lastName
echo "Enter your email id"
read email
echo "Enter your mobile number"
read mobile
echo "Enter your password"
read password

firstName1="^[A-Z][a-zA-Z]{3,15}$"
lastName1="^[A-Z][a-zA-Z]{3,15}$"
email1="^([0-9a-zA-Z]+)([_+-.][0-9a-zA-Z])?[@][0-9a-zA-Z]+([.][a-z]{2,4})([.][a-z]{2})?$"
mobile1="^[0-9]{2}[ ]{1}[0-9]{10}$"
passwordRule1="^[a-zA-Z]{8,15}$"
passwordRule2="[a-zA-Z]*[A-Z]+[a-zA-Z]*{8,}$"
passwordRule3="^[a-zA-Z]*([A-Z]+)([0-9]+)[a-zA-Z]*{8,}$"
passwordRule4="^[a-zA-Z]*([A-Z]+)([0-9]+)([%,&,#,@,$]{1})[a-zA-Z]*{8,}"


function firstNameValidation()
{
  if [[ $firstName =~ $firstName1 ]]
     then 
      echo "Enter valid first name"
  else
       echo "Enter invalid fisrt name"
  fi
}

function lastNameValidation()
{
  if [[ $lastName =~ $lastName1 ]]
     then 
      echo "Enter valid last name"
  else
       echo "Enter invalid last name "
  fi
}

function emailIdValidation()
{
   if [[ $email =~ $email1 ]]
      then
      echo "Enter valid email"
   else
      echo "Enter invalid email"
   fi
}

function mobileNumValidation()
{
  if [[ $mobile =~ $mobile1 ]]
     then
      echo "Enter valid mobile number"
  else
      echo "Enter invalid mobile number"
  fi
}

function passwordValidation()
{
  if [[ $password =~ $passwordRule4 ]]
     then
       echo "Valid password"
  else
       echo "Invalid password"
  fi
}


firstNameValidation
lastNameValidation
emailIdValidation
mobileNumValidation
passwordValidation
