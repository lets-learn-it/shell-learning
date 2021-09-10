Bourne shell didn't originally have any mechanism to perform simple arithmetic operations but it uses external programs, either `awk` or `expr`.

# Arithmetic Operators

```sh
#!/bin/sh

val=`expr 2 + 2`
echo "Total value : $val"
```

### Other Arithmetic Operators

```sh
#!/bin/sh

echo `expr 2 + 2`
echo `expr 2 - 2`
echo `expr 2 \* 2`
echo `expr 2 / 2`
echo `expr 2 % 2`
echo `expr 2 == 2`
echo `expr 2 != 2`

# while using in expression, use [ ]
c=expr [ $a == $b ]
echo $c
```

# Relational Operators
# Boolean Operators
# String Operators
# File Test Operators
