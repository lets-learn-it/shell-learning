#!/bin/bash

# Aliases are not expanded when shell is not interactive
# to expand, use expand_aliases option
shopt -s expand_aliases

# syntax alias word='command'
alias la="ls -a"

# list aliases
echo "List of Aliases: "
alias -p


# run alias
la