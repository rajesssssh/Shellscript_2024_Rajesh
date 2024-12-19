#!/bin/bash
echo "please enter the integervalue to find factorial"
read num
temp=$num

prod=1

while [ $num -gt 1 ]
do
prod=`expr $prod \* $num`
num=`expr $num - 1`
done
echo "The factorial of $temp is $prod"
