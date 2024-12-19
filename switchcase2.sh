#!/bin/bash
set -x 
day=`date '+%a'`
todaydate=`date '+%D'`
echo "Today:$day"

case $day in

'Mon') echo "Finding files which was modified 10 days ago "
       find /home/ubuntu/ -type f -mtime +10
       ;;
'Tue') echo "Listing all files which contail a pattern "
       grep -r -l "devops" *
       ;;
'Wed') echo "Listing all the files which does not contains pattern"
       grep -r -L "devops" *
       ;;
'Thu') echo "Checking wether given path is file or directory or link"
       echo "Enter the patch"
	   read path
	   if [ -L $path ]
	   then 
	   echo "The given path is link"
	   elif [ -d $path ]
	   then
	   echo "The given path is directory"
	   elif [ -f $path ]
	   then
	   echo "The given path is file"
	   else
	   echo "The given path does not exist"
	   fi
       ;;
'Fri') echo "Finding the empty files"
       find /home/ubuntu/ -type f -empty > report3
	   counter=`cat report3 | wc -l`
	   if [ $counter -eq 0 ]
	   then
	   echo "Empty files does not exist"
	   fi
        ;;
'Sat|Sun') echo "No Task Today"
esac
