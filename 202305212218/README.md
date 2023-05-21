# Redirecting Standard Output

First, what even is [Standard Output](../202305212216/README.md)?

Another place you can put the output of a command is in a file. Use the `>` shell operator to *redirect* standard output into a file, overwriting its contents. To append to a file, use the `>>` operator.  

## Example
```
$ ls > file1  # output to a file
$ cat file1  # print file contents  
Desktop Documents Downloads Pictures Music  
```

## References
[Linux Pocket Guide](https://linuxpocketguide.com/)

## Tags
#linux
