# First code

```sh
#!/bin/sh
# This is a comment!
echo Hello World        # This is a comment, too!
```

## Line explaination

1. tells Unix that the file is to be executed by /bin/sh
2. #. This marks the line as a comment, and it is ignored completely by the shell.
3. The third line runs a command: echo, with two parameters, or arguments - the first is "Hello"; the second is "World".

>Note that echo will automatically put a single space between its parameters.
>means `echo hello world` and `echo hello          world` are same

### Run file

change file permissions.

```sh
chmod 777 hello-world.sh
```

execute file.

```sh
./hello-world.sh
```

## Fast & slow Scripts

```sh
// slow 
$ cat /tmp/myfile | grep "mystring"
// fast
$ grep "mystring" /tmp/myfile
```

In first command, system is loading `cat` unnecessary. and also setting up and releasing the `pipe`
