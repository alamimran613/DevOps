#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
    echo "You have 1 Network Interface found"
elif [ $value -gt 1 ]
then
    echo "Found Multiple Network Adapter"
else
    echo "No Network Interface Found"
fi  
