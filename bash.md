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

