# Introduction

```sh
#!/bin/sh
MY_MESSAGE="Hello World"
# do not give space
# like MY_MESSAGE = "HELLO WORLD"
echo $MY_MESSAGE
```

Note that we need the quotes around the string Hello World Otherwise, the shell will try to execute the command `World` after assigning `MY_MESSAGE=Hello`. Whereas we could get away with echo Hello World because echo will take any number of parameters

The shell does not care about types of variables; they may store strings, integers, real numbers.

The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the underscore character ( _).

By convention, Unix shell variables will have their names in UPPERCASE.

## Readonly variables

```sh
#!/bin/sh
MY_MESSAGE="Hello World"
echo $MY_MESSAGE
readonly MY_MESSAGE
MY_MESSAGE="WOW"
# it will give error
# MY_MESSAGE is readonly
```

### Unsetting variable

It will unset variable to null. You cant unset `readonly` variable.

```sh
MY_VAR="HELLO"
unset MY_VAR
echo $MY_VAR
```

## Variable Types

- **Local Variables** − A local variable is a variable that is present within the current instance of the shell. It is not available to programs that are started by the shell. They are set at the command prompt.
- **Environment Variables** − An environment variable is available to any child process of the shell. Some programs need environment variables in order to function correctly. Usually, a shell script defines only those environment variables that are needed by the programs that it runs.
- **Shell Variables** − A shell variable is a special variable that is set by the shell and is required by the shell in order to function correctly. Some of these variables are environment variables whereas others are local variables.

### Example

```sh
# set variable in terminal
$ A="HI"
# set env variable
$ export B="Bye"
```

#### create file

```sh
# A is local and wont print
echo $A
# B is env and will print
echo $B
```

## Special Variable

- `$0`: The filename of the current script.
- `$n`: These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on)
- `$#`: The number of arguments supplied to a script.
- `$*`: All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2
- `$@`: All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2
- `$?`: The exit status of the last command executed.
- `$$`: The process number of the current shell. For shell scripts, this is the process ID under which they are executing.
- `$!`: The process number of the last background command.

### Examples

```sh
#!/bin/sh

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
```

#### Run above file

```sh
./filename.sh arg1 arg2
```

##### Output

```txt
File Name: var.sh
First Parameter : arg1
Second Parameter : arg2
Quoted Values: arg1 arg2
Quoted Values: arg1 arg2
Total Number of Parameters : 2
```
