#!/bin/bash

### Script for decision making if statement ###

read -p "Enter a Number: " NUM
echo

if [ $NUM -gt 100 ]
then
    echo "We have Entered if Block"
    sleep 3
    echo "You Have Entered a Number greater than 100"
    echo
    date
fi

echo "Script Executed Successfully"
