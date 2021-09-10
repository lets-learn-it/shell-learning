#!/bin/sh

# if
a=10
if [ $a -lt 11 ]
then
  echo $a
fi


# another if
b=""
if [ -z $b ];
then
  echo $b
fi