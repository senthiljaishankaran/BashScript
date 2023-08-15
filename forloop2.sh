#!/bin/bash

### Scripting for loop for user creation ###

MYLIST="Senthil Kumar"

for usr in $MYLIST
do
  useradd $usr
  id $usr
done
