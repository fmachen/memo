# How to bash language

### Define a variable

```
var toto="Hello world"
```

### Display a variable content

```
echo ${toto}
```

### String length

```
echo ${#toto}
```

### Extract a substring

```
${string:position}
${string:position:length}
```

### Shortest substring

```
filename="bash.string.txt"
echo ${filename#*.} # string.txt
echo ${filename%.*} # bash.string
```

### Longest substring

```
filename="bash.string.txt"
echo ${filename##*.} # txt
echo ${filename%%.*} # bash
```

### Find and replace substring

Replace the first match

```
filename="bash.string.txt"
echo ${filename/str*./operations.} # bash.operations.txt
```

Replace all matches

```
filename="Path of the bash is /bin/bash"
echo ${filename//bash/sh} # Path of the sh is /bin/sh
```

Replace beginning and end

```
filename="/root/admin/monitoring/process.sh"
echo ${filename/#\/root/\/tmp} # /tmp/admin/monitoring/process.sh
echo ${filename/%.*/.ksh} # /root/admin/monitoring/process.ksh
```

### Special parameters

 * $* : within a pair of double quotes is equivalent to the list of positional parameters, separated by the first character of IFS "$1c$2c$3...".

 * $@ : within a pair of double quotes is equivalent to the list of positional parameters, separated by unquoted spaces, i.e., "$1" "$2".."$N".

 * $# : number of positional parameter.

 * $$ : process ID of the shell.

 * $! : process ID of the most recently executed background process.

 * $? : exit status of the most recently executed command.

 * $- : pptions set using set builtin command.

 * $_ : last argument to the previous command. At the shell startup, it gives the absolute filename of the shell script being executed.
