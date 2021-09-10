#! /bin/sh

MY_NAME="Parikshit Patil"  # don't use space like MY_NAME = "Parikshit"

echo $MY_NAME

MY_AGE=23

#### READONLY ####

DOB="08/06/1998"
readonly DOB

# Try to modify DOB (Below line will give error)
# DOB="09/06/1998" 

#### UNSETTING VARIABLE ####

MY_VAR="HELLO"
unset MY_VAR
echo $MY_VAR # wont print anything