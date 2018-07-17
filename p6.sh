#!/bin/bash

#This scripts takes an input and displays the factorial

echo "Please enter a number to calculate the factorial"
read input

result=1
count=0
while [ $input -ne $count ]
do
        count=`expr $count + 1`
        result=`expr $result \* $count`
done
echo "The factorial of given input $input is $result"
