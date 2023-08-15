#!/bin/bash

### Script to monitor the running server ###

ls /var/run/httpd/httpd.pid

if [ $? -eq 0 ]
then
    echo "Httpd server is Running"
else
    echo "Httpd process not running"
    echo "Starting the process"
    systemctl start httpd
    if [ $? -eq 0 ]
    then
        echo "Process started successfully"
    else
        echo "Starting the server failed"
    fi
fi
