# Makefiles 

## What are they and Why do we use them?
**Makefiles** are text files named *Makefile* or *makefile* that utilize GNU *make*'s tools to compile and link a program. They are often used in combination with the GCC compiler [\[What is GCC\]](../202110191739) to form the GCC/Make opensource toolchain for developing software.  

## The Simplest Makefile
```mk
hellomake: hellomake.c hellofunc.c
		gcc -o hellomake hellomake.c hellofunc.c -I.
```

This makefile contains one *rule* with the *target* `hellomake`, *prerequisite(s)* `hellomake.c` and `hellofunc.c`, and *recipe* `gcc -o hellomake hellomake.c hellofunc.c -I`.

  
Typing `make hellomake` in the command line will execute the recipe of this rule. Note that typing `make` with no arguments on the command line will execute the first rule of a makefile in the current directory.  


## Links
1. [\[A Rule in a Makefile\]](../202110182258)  
2. [\[A Target in a Makefile\]](../202110182306)  
3. [\[A Prerequisite in a Makefile\]](../202110182309)  
4. [\[A Recipe in a Makefile\]](../202110182310)  

## References
1. [\[A Simple Makefile Tutorial\]](https://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/)

2. [\[GNU make Manual\]](https://www.gnu.org/software/make/manual/html_node/index.html#SEC_Contents)

## Tags
#embeddedSystems
