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
