#!/bin/bash

a=100
b=200
c=300

if [[ a -gt b && a -gt c ]]
then
echo "a is biggest"
elif [[ b -gt a && b -gt c ]]
then
echo "b is biggest" 
else
echo "c is biggest"
fi

