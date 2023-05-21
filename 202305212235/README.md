# Redirecting Standard Error

Another place we can put the error of a command is in a file. Similar to [Redirecting Standard Output](../202305212218/README.md), we use the `2>` operator to *redirect* standard output into a file, overwriting its contents, and `2>>` to append to the file.  
## Example
```
$ wc -s 2> errorfile  # redirect error to a file
$ cat errorfile  # print the file's contents
wc: invalid option -- 's'
Try 'wc --help' for more information.
```

To redirect both standard output and standard error to a single file, use the `&>`/`>&` or `&>>`/`>>&` operators for overwriting or appending contents to the file, respectively.  

## References
[Linux Pocket Guide](https://linuxpocketguide.com/)

## Tags
#linux
