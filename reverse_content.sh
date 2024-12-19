#!/bin/bash
echo "enter the file name"
read file_name
num=`wc -l < $file_name`
for ((i = num; i >=1; i--));
do
head -n $i "$file_name" | tail -n 1
done

