#!/bin/sh

a=30

case "$a" in 
  20) 
    echo "20"
  ;;
  30) 
    echo "30"
    echo "not 20"
  ;;
esac