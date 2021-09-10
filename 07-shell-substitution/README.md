# Shell Substitution

The shell performs substitution when it encounters an expression that contains one or more special characters.

### Simple example

```sh
#!/bin/sh
a=10
echo -e "Value of a is $a\n"
```

In above example `$a` is substituted by value and `\n` is by newline

## Command Substituion

It is mechanism by which the shell performs a given set of commands and then substitutes their output in the place of the commands

### syntax

```sh
#!/bin/sh

# syntax
# this is text `command`

echo "Today date is `date`"
```

### Example

```sh
#!/bin/sh
# wc command does word count
USERS=`who | wc -l`
echo "Logged in user are $USERS"
```

## Variable Substitution

It enables the shell programmer to manipulate the value of a variable based on its state.

### List of possible substitutions

1. `${var}`: Substitute value ot *var*

```sh
#!/bin/sh

var="Parikshit"
echo "hi ${var}"  # hi Parikshit
```

2. `${var:-word}`: It *var* is null or unset, word is substitued for *var*. value of *var* does not changes

```sh
#!/bin/sh

var="Parikshit"
word="Patil"
unset var
echo "hi ${var:-PSKP}"  # hi PSKP
echo "hi ${var:-$word}" # hi Patil
```

3. `${var:=word}`: If *var* is null or unset, *var* is set to value of word

```sh
#!/bin/sh

var="Parikshit"
word="Patil"
unset var
echo "hi ${var:=$word}"
echo "Value of $var"
```

4. `${var:?message}`: If *var* is null or unset, message is printed to standard error. This checks that variables are set correctly

```sh
#!/bin/sh

var="Parikshit"
message="var is not set correctly"
unset var
echo "hi ${var:?$message}"  
# var.sh: line 6: var: var is not set correctly
```

5. `${var:+word}`: If *var* is set, word is substituted for var. The value of var does not change

```sh
#!/bin/sh

var="Parikshit"
word="Patil"
echo "hi ${var:+$word}" # hi Patil
echo $var # Parikshit 
```