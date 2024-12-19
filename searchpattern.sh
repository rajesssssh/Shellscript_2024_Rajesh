#!/bin/bash
echo "Enter the search pattern"
read pattern
grep -r -l "$pattern" * > reportingfile

if [ -s reportingfile ]
then
cat reportingfile
else
echo "files does not exist with the search pattern"
fi
rm -rf reportingfile
