#!/bin/sh
a=1
while [ $a -lt 10 ]
do
  if [ $a -gt 5 ]
  then
    echo $a+
  else 
    echo $a
  fi
  a=`expr $a + 1`
done