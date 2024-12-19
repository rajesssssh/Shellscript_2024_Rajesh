#!/bin/bash
#set -x
service_array="ssh jenkins"
for i in $service_array
do
#$( ps -ef | grep -i "$i" )
ps -C $i
if [ $? -ne 0 ]
then
echo $i >> /home/ubuntu/temp/NEWSCRIPT/file1
fi
done

if [ -s file1 ]
then
echo "the below services are not running"
cat file1
cat file1 | mail -s  "Service not running" rajesh0807r@gmail.com
#rm -rf file1
fi

