# For loop

## for loop on cmd line args

```sh
#!/bin/sh
# $@ gives individually quoted args
for TOKEN in $@
do
  echo $TOKEN
done
```

**How to run?**

```sh
$ ./cmd_args.sh 1 2 3
1
2
3
```

## In array

```sh
#! /bin/bash

a=(1 2 3 4 5)
for element in ${a[@]}
do
  echo $element
done
```

## simple list

```sh
#!/bin/bash

for element in 0 1 2 3 4 5
do
  echo $element
done
```

## using counter

```sh
#!/bin/bash

a=(1 2 3 4 5)

# get length of an array
arraylength=${#a[@]}

# use for loop to read all values and indexes
for (( i=0; i<${arraylength}; i++ ));
do
  echo "index: $i, value: ${a[$i]}"
done
```

## Loop in range

```sh
#!/bin/bash

for i in {1..100}
do
  echo -n "$i "
done
```

## break loop

```sh
#!/bin/bash

for a in 1 2 3 4 5 6 7
do
  if [ $a -gt 5 ]
  then
    break
  fi
  echo $a
  a=`expr $a + 1`
done
```
