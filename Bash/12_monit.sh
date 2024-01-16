#!/bin/bash

# This is nested if script

echo "########################################"
date
# ls /var/run/httpd/httpd.pid &> /dev/null
# -f means file <path of file> exists
if [ -f /var/run/httpd/httpd.pid ]
then
    echo "HTTPD Process is Running"
else
    echo "HTTPD process is not Running"
    echo "Staring HTTPD Process"
    systemctl start httpd
    # Here another if is used in else part. It called nested if condition
    if [ -f /var/run/httpd/httpd.pid ]
    then
        echo "Process started successfully."
    else
        echo "Process starting failed, Contact Admin."
    fi
fi
echo "########################################"
echo
