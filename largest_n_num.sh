#!/bin/bash

# Define the array properly
array_name=(12 20 15 25)

# Initialize 'lar' to the first element of the array
lar=${array_name[0]}

# Loop through the array to find the largest number
for i in "${array_name[@]}"
do
    if [ $i -gt $lar ]
    then
        lar=$i
    fi
done

# Output the largest number
echo "The largest number in the array is $lar"
