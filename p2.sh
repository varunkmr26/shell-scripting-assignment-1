#!/bin/sh

#This scripts takes two inputs and displays their sum, difference, product and quotient

echo "This script requires two integer inputs"
echo "Please enter your first integer x"
read x
echo "Please enter your second integer y"
read y

result=`expr $x + $y`
echo "The sum of the inputs : $result"

result=`expr $x - $y`
echo "The difference between the inputs : $result"

result=`expr $x \* $y`
echo "The product of the inputs : $result"

result=`expr $x / $y`
echo "The quotient of x upon y is : $result"


