#!/bin/bash

# Declare varibale
counter=2
# It's a boolean expression true means true forever that means it will always true and run infinity
while true
do
    echo "Looping"
    echo " Value of Counter is $counter"
    #Increase counter variable value by *2
    counter=$(($counter * 2 ))
    sleep 1
done
echo "Out of the loop"