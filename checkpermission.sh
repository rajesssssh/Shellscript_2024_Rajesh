#!/bin/bash

reportingfile=`find . -maxdepth 1 -type f -perm 764`

if [ -s reportingfile ]
then
cat reportingfile
else
echo "files does not exist with the search pattern"
fi
rm -rf reportingfile

