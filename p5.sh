#!/bin/bash
#This script for scheduling cron jobs


#execute script1.sh on all weekdays at 2 PM
(crontab -l 2>/dev/null; echo "00 14 * * 1,2,3,4,5  ~/script1.sh") | crontab -
 
#Execute script2.sh at every 3 hour interval between 8AM to 8PM
(crontab -l 2>/dev/null; echo "00 8-20/3 * * *  ~/script2.sh") | crontab -


#execute script3.sh on all the odd dates of all the even months at midnight
(crontab -l 2>/dev/null; echo "00 00 1-31/2 2,4,6,8,10,12 * ~/script3.sh") | crontab -


