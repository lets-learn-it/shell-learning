#!/bin/bash


alias la="ls -a"

# list aliases
echo "List of Aliases: "
alias -p

# remove alias
unalias la

# list aliases
echo "List of Aliases: "
alias -p