#!/bin/bash

set -ex

# while running script we can pass args like below
# ./filename.sh arg1 arg2

echo "We got $# args"

echo "First Arg is $1"

# get all args as array

echo "All args $* $@"