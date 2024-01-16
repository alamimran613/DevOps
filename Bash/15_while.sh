#!/bin/bash

# Declare varibale
counter=0

while [ $counter -lt 5 ]
do
    echo "Looping"
    echo " Value of Counter is $counter"
    #Increase counter variable value by +1
    counter=$(($counter + 1 ))
    sleep 1
done
echo "Out of the loop"