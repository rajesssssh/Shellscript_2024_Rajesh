#!/bin/bash

echo "Please enter the file name to read"
read file_name

while read line
do
count=`echo "$line" | wc -c`
n=`expr $n + 1`
echo "the number of character in line number $n is $count"
done < $file_name
