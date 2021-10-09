# until loop

similar to while but loop iterates till `true` not come

## simple until

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
