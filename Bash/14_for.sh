#!/bin/bash

# Declare variable MYUSERS with 3 value
MYUSERS="alpha beta gamma"
# Declare variable usr in for loop and get input from MYUSERS variable
for usr in $MYUSERS 
do
    echo "Adding User $usr."
    useradd $usr
    id $usr
    echo "#######################"
    sleep 1
done
