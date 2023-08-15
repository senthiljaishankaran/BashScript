#!/bin/bash

### Script is an Example to Use an Command substitution in scripts ###

echo "Welcome $USER on $HOSTNAME"
echo "#############################"

### Variable to be used in the Script ###

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep devtmpfs | awk '{print $4}')

echo "##############################"
echo "Available free RAM is $FREERAM MB"
echo "##############################"
echo "Current Load Average $LOAD"
echo "##############################"
echo "Available Memory is $ROOTFREE MB"
echo
echo "Script Completed successfully"
