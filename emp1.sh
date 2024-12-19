#!/bin/bash

echo "enter the file number"
read file_name

echo "the name of the employee and employee id working in devops are"
while read line
do	
count=`echo "$line" | grep -i "devops" | awk -F " " '{print $1, $2, $3}'`

echo "$count"

done <$file_name

