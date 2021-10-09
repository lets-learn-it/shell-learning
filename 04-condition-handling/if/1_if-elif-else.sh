#!/bin/sh

a=20

if [ $a -gt 20 ]
then
  echo "a > 20"
elif [ $a -lt 20 ] || [ $a -eq 20 ]   # more than one condition
then
  echo "a < 20"
else
  echo "a = 20"
fi