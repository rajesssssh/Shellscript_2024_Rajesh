#!/bin/bash

echo "enter the number"
read num
echo "the decrement are:"
for i in {1..5}
do
	i=`expr $num + 1`
	echo $i
	num=`expr $num - 1`
done


