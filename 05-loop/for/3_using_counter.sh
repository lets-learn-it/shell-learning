#!/bin/bash

a=(1 2 3 4 5)

# get length of an array
arraylength=${#a[@]}

# use for loop to read all values and indexes
for (( i=0; i<${arraylength}; i++ ));
do
  echo "index: $i, value: ${a[$i]}"
done