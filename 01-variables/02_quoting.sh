#!/bin/bash

set -ex

world="World"

##### 2 types of quoting

## Weak Quoting: uses double quote. It will expand arguments

echo "Hello, $world"

# If you don't want to expand args in weak quoting

echo "Hello, \$world"

## Strong Quoting: uses single quote. It won't expand args.

echo 'Hello, $world'
