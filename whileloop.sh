#!/bin/bash

### Script for while loop ###

counter=0

while [ $counter -lt 5 ]
do
  echo "Looping...."
  echo "Value of counter is : $counter"
  counter=$(($counter +1))
done

echo "Out of the loop" 
