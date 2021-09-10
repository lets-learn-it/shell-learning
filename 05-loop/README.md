# For loop

```sh
#!/bin/sh
# $@ gives individually quoted args
for TOKEN in $@
do
  echo $TOKEN
done
```

### Another Examples

```sh
#!/bin/sh
# 1
for element in 0 1 2 3 4 5
do
	echo $element
done

# 2
a=(1 2 3 4 5)
for element in ${a[@]}
do
  echo $element
done

# 3 using counter
# get length of an array
arraylength=${#a[@]}

# use for loop to read all values and indexes
for (( i=0; i<${arraylength}; i++ ));
do
  echo "index: $i, value: ${a[$i]}"
done

# 4
for i in {1..100}
do
  echo -n "$i "
done
```

### break

```sh
#!/bin/sh
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

# While loop

```sh
#!/bin/sh
# while loop
a=0

while [ $a -lt 10 ]
do
  echo $a
  a=`expr $a + 1`
done
```

### Loop with if

```sh
#!/bin/sh
a=1
while [ $a -lt 10 ]
do
  if [ $a -gt 5 ]
  then
    echo $a+
  else 
    echo $a
  fi
  a=`expr $a + 1`
done
```

# until loop

similar to while but loop iterates till `true` not come

```sh
#!/bin/sh
# until loop
a=0

until [ ! $a -lt 10 ]
do
  echo $a
  a=`expr $a + 1`
done
```