#!/bin/bash

echo "Enter your skills:"

# Get user input and store in SKILL variable
read SKILL 
echo "Your $SKILL is in high Demand in the IT Industry"

# Get user input while printing Username and store value in USR variable
read -p 'Username: ' USR

# Get user input while printing Password: and store value in PASS variable. -s means supress that means user input value will not showing while typing
read -sp "Password: " PASS

echo "Login Successfull: Welcome User $USR"