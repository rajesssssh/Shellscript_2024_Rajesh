#!/bin/bash
set -x 
day=`date '+%a'`
todaydate=`date '+%D'`
echo "Today:$day"

case $day in

'Mon') echo "Creating files"
       touch filex filey
       ;;
'Tue') echo "Renaming files"
       mv filex filep
       mv filey fileq
       ;;
'Wed') echo "Adding content to files"
       echo "yesterday is wednesday" > filep
       echo "Today date is $todaydate" > fileq
       ;;
'Thu') echo "Displaying file content"
       cat filep
       cat fileq 
       ;;
'Fri') echo "Removing files"
       rm -f filep fileq
        ;;
'Sat|Sun') echo "No Task Today"
esac
