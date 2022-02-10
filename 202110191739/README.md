# What is GCC

GCC is a GNU project C and C++ compiler. GCC commands preprocess, compile, assemble, and link C and C++ files. By writing a *makefile* that invokes GCC commands, you have complete control over this process [\[Makefiles\]](../202110182235).

## Example
```sh
	gcc -o hellomake hellomake.c hellofunc.c -I.
```

* `gcc` tells bash that this is a gcc command
* `-o` is an option that specifies the output file to be an object file  
* `hellomake` is the name of the output file  
* `hellomake.c` and `hellofunc.c` are the input files necessary to create the output file  
* `-I` is an option that specifies what directories to search for the input files, including the **#include** files. In this case, `-I.` specifies the current (`.`) directory. It is worth noting that this option has been deprecated since it only searches for the case of **#include** "file" and not **#include** <file>. Use `-iquote` instead of `-I`.  

## References
[g++ - Linux man page](https://linux.die.net/man/1/g++)

## Tags
#embeddedSystems #gcc
