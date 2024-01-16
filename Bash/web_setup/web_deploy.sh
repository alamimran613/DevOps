#!/bin/bash

# This script will push multios_website.sh file to each vm and run the script

USR='devops'
for host in `cat remhosts`
do
    echo "######################"
    echo "Connecting to $host"
    scp multios_website.sh $USR@$host:/tmp/
    ssh $USR@$host sudo /tmp/multios_website.sh
    ssh $USR@$host sudo rm -rf /tmp/multios_website.sh
    echo "######################"
    echo ""
done