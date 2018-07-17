#!/bin/bash
#This script for scheduling cron jobs

# enter the cron job file
crontab -e 

#execute script1.sh on all weekdays at 2 PM
00 14 * * 1,2,3,4,5  ~/script1.sh

 
#Execute script2.sh at every 3 hour interval between 8AM to 8PM
00 8-20/3 * * *  ~/script2.sh

#execute script3.sh on all the odd dates of all the even months at midnight
00 00 1-31/2 2,4,6,8,10,12 * ~/script3.sh

