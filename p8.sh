#!/bin/bash

#This checks if a given traingle is scalene, isosceles or equilateral

echo "This problem needs three inputs a,b c"
echo "Please enter inputs in the format a b c"
read a b c

if [[ ($a -eq $b) && ($b -eq $c) ]]
then 
    echo "EQUILATERAL"
elif [[ ($a -ne $b) && ($b -ne $c) && ($c -ne $a) ]]
then
    echo "SCALENE"
else
    echo "ISOSCELES"
fi
