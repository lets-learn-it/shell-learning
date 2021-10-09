# if

## simple if

```sh
#!/bin/sh

# if
a=10
if [ $a -gt 11 ]
then
  echo $a
fi
```

## if-elif-else ladder

```sh
#!/bin/sh

a=20

if [ $a -gt 20 ]
then
  echo "a > 20"
elif [ $a -lt 20 ]
then
  echo "a < 20"
else
  echo "a = 20"
fi
```
