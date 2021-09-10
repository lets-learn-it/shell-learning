# Output redirection

The output from a command normally intended for standard output can be easily diverted to a file instead. This capability is known as output redirection.

```sh
$ command > filename
```

### Example

```sh
$ who > users # create file named users
```

Above redirection overwrites the file. If you want to append to existing file then use `>>`

```sh
$ command >> filename
```

### Example

```sh
$ who >> users # append to already created file
```

# Input Redirection

The commands that normally take their input from the standard input can have their input redirected from a file in this manner.

```sh
$ command < filename
```

### Example

```sh
# give users file to wc program
$ wc -l < users
2
```

A here document is used to redirect input into an interactive shell script or program.

We can run an interactive program within a shell script without user action by supplying the required input for the interactive program, or interactive shell script.

The general form for a here document is −

```sh
command << delimiter
document
delimiter
```

### Example

```sh
$ wc -l << INF
heredoc> hi my name is parikshit
heredoc> I am from kavathe Ekand
heredoc> Hi ther INF
heredoc> INF
3
$ cat << INF
heredoc> fuhdfuih fhuihduf
heredoc> fuh ij INF
heredoc> INF
fuhdfuih fhuihduf
fuh ij INF
```

Here the shell interprets the << operator as an instruction to read input until it finds a line containing the specified delimiter. All the input lines up to the line containing the delimiter are then fed into the standard input of the command.

## Discard the output

Sometimes you will need to execute a command, but you don't want the output displayed on the screen. In such cases, you can discard the output by redirecting it to the file `/dev/null` −

```sh
$ command > /dev/null
```

To discard both output of a command and its error output, use standard redirection to redirect STDERR to STDOUT −

```sh
$ command > /dev/null 2>&1
```

Here 2 represents STDERR and 1 represents STDOUT. You can display a message on to STDERR by redirecting STDOUT into STDERR as follows −

```sh
$ echo message 1>&2
```

### Examples

Create `cpp` file with error. 

```cpp
#include<iostream>
using namespace std;

int main(){
	int a  // error
	return 0;
}
```

Now compile file. It will give error.

```sh
$ g++ demo.cpp # will give error

# Now redirect STDERR to /dev/null
# Error wont show in terminal
$ g++ demo.cpp 2>/dev/null

# you can rediret STDERR to STDOUT
$ g++ demo.cpp 2>&1
```
