#!/bin/bash

for a in 1 2 3 4 5 6 7
do
  if [ $a -gt 5 ]
  then
    break
  fi
  echo $a
  a=`expr $a + 1`
done