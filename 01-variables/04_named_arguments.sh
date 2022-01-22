#!/bin/bash

set -ex

# named args are as follow
# ./filename.sh --name parikshit --branch CSE

while (( $# > 1 )); 
    do case $1 in
        --name) name="$2";;
        --branch) branch="$2";;
        *) break;
    esac; shift 2
done

echo "name is $name"
echo "Branch is $branch"