#!/bin/bash

# Welcome Print
echo "Welcome $USER in $HOSTNAME Machine"
echo ""
echo ""
# Declare Variable
FREE_MEM=$(free -h | grep -i mem | awk {'print $4'})
USED_MEM=$(free -h | grep -i mem | awk {'print $3'})
LOAD=$(uptime | awk {'print $9'})
ROOT_FREE=$(df -h | grep /dev/sda1 | awk {'print $4'})


echo "Free Memory is $FREE_MEM in mb"
echo ""
echo "Used Memory is $USED_MEM in mb"
echo ""
echo "Load Average $LOAD"
echo ""
echo "Root Free Storage is $ROOT_FREE"

