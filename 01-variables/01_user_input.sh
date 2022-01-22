#!/bin/bash

set -ex

echo "What is your name?"

# read will read whole line from standard input
read name

echo "Hi, $name"

echo "what is your favourite subject?"

read subject

echo "${name}'s favourite subject is $subject"