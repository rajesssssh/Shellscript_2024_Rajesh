#!/bin/bash

user="rajesh sunil  mahesh"

for user in $user
do

grep -i -w $user /etc/passwd

if [ $? -ne 0 ]
then
sudo useradd $user
fi
done
