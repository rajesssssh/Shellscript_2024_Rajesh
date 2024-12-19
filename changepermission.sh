#!/bin/bash

find . -maxdepth 1 -type f -perm 766 > reportingfile

if [ -s reportingfile ]
then
echo "Below are the files with permission 764"
cat reportingfile
else
echo "files does not exist with the search pattern"
fi
echo "we are changed to permission 766"
while read line
do
chmod 764 $line
done < reportingfile
rm -rf reportingfile

