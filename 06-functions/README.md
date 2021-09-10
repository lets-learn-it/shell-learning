## Simple function

```sh
#!/bin/sh
# define function
sayHello(){
  echo "Hello World"
}
# call function
sayHello
```

## Function with params

```sh
#!/bin/sh
# define function
# $1 is first parameter
sayHello(){
  echo "Hello World $1"
}
# call function
sayHello Parikshit
```

## return value

shell functions can only return numerical value.

```sh
#!/bin/sh
# define function
returnSomething(){
  if [ $1 -gt 10 ]
  then
    return 1
  else
    return 2
  fi
}
# call function
returnSomething 10
# capture returned value
temp=$?
echo $temp
```

### How to return string

You cant return string so we can create global variable and assign value to it.

```sh
#!/bin/sh
# define function
a=""
returnString(){
  if [ $1 -gt 10 ]
  then
    a="This is > 10"
  else
    a="this is <= 10"
  fi
}
# call function
returnString 10
echo $a
```