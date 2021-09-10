## Simple example

```sh
#!/bin/sh

NAME[0]="Ram"
NAME[1]="Krishna"
NAME[2]="Sita"
NAME[3]="Radha"

# access variable using index
echo ${NAME[3]}
```

### Ksh initialize array

```sh
set -A NAME "RAM" "KRISHNA" "SITA" "RADHA"
```

### Bash initialize array

```sh
NAME=("RAM" "KRISHNA" "SITA" "RADHA")

# or
declare -a array=("one" "two" "three")
```

You can **access all the items in an array** in one of the following ways

```sh
${NAME[*]}
${NAME[@]}
```