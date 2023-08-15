#!/bin/bash

### Scritp for Decision making statement with if-elif statement ###

VALUE=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $VALUE -eq 1 ]
then
    echo "1 Active Network Interface found"
elif [ $VALUE -gt 1 ]
then
    echo "Multiple Devices Found"
else
    echo "No devices found"
fi

echo "Script Completed Successfully"
