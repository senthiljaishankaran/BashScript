#!/bin/bash

### This script contains commands to remove the service and files installed and created from the webserver script ###

### Variable used in the Script ###

SERVICE="httpd"
PACKAGE="httpd wget unzip"

echo "Stopping the httpd server"
sudo systemctl stop $SERVICE
echo
echo "$SERVICE stopped successfully"

echo "Removing files from the var directory"
sudo rm -rf /var/www/html/*
echo
echo "Var folder cleaned"

echo "Removing the Dependencies installed"
sudo yum remove $PACKAGE -y
echo
echo "Dependencies removed successfully"
