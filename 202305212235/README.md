# Redirecting Standard Error

First, what is [Standard Error](../202305212230/README.md)?

Another place we can put the error of a command is in a file. Similar to [Redirecting Standard Output](../202305212218/README.md), we use the `2>` operator to *redirect* standard output into a file, overwriting its contents, and `2>>` to append to the file.  
## Example
```bash
$ wc -s 2> errorfile  # redirect error to a file
$ cat errorfile  # print the file's contents
wc: invalid option -- 's'
Try 'wc --help' for more information.
```

To redirect both standard output and standard error to a single file, use the `&>` or `>&` operators. Use the `&>>` or `>>&` operators for appending contents to the file.  

## Links
[Inputs, Outputs, and Errors](../202305212246/README.md)  

## References
[Linux Pocket Guide](https://linuxpocketguide.com/)

## Tags
