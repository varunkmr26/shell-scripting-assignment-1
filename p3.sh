#!/bin/bash

#This scripts displays the current date, time, working directory and the user

printf 'The current date is: ' ; date '+%d-%m-%Y'
printf 'The current time is: ' ; date '+%H:%M:%S'
printf 'The current working directory: ' ; pwd
printf 'The current user is: ' ; whoami 
