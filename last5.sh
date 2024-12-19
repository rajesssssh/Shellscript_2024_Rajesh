#!/bin/bash
#set -x
echo "enter the number"
read num

echo "the last 5 number"

val=1

while [ $val -le 5 ]
do
	
	num=`expr $num - 1`
	val=`expr $val + 1`
	echo "$num"
done
        

