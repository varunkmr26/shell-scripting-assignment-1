#!/bin/bash

#This scripts takes an input and creates a file with the given input text

echo "Please enter the name of the file"
read NAME
echo "Enter a sentence to append to the file"
read TEXT
NAME+='_file.txt'
echo $TEXT > $NAME
echo "A file $NAME is created with the given content"
