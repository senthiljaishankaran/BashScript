#!/bin/bash

### This Script file prints system info ###

echo "Welcome to Bashscript"
echo
echo "####################"

echo "The Uptime of the System is: "
uptime
echo
echo "###################"

echo "Memory Utilization is: "
free -m
echo
echo "###################"

echo "Disk Utilization is: "
df -h
echo
echo "###################"

echo "BashScript Executed Successfully"
