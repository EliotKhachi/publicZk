# Makefiles

## What are they and Why do we use them?
**Makefiles** are files that tell GNU *make* how to compile and link a program. 

Normally, to compile a collection of code, you execute the following command in the terminal:
gcc -o hellomake hellomake.c hellofunc.c -I.

This compiles the two .c files and names the executable hellomake. The -I. is included so that gcc will look in the current directory (.) for the include file hellomake.h. 

Typing this command in the terminal each time you want to compile has two downsides:
**Problem 1:** If you the lose compile command or switch computers you have to retype it from scratch.
**Problem 2:** If you are only making changes to one .c file, you must still recompile all of them.
## What is a makefile composed of?

**The Simplest Makefile:**

	hellomake: hellomake.c hellofunc.c

		gcc -o hellomake hellomake.c hellofunc.c -I.

**Solution:** Solves **Problem 1** (see above).

**Issue:** Does not solve **Problem 2**.

The above example is a called a **rule**. In this case, it is the only rule in the makefile. *hellomake* is called the **target**, *hellomake.c* and *hellofunc.c* are called the **prerequisites**, and *gcc -o hellomake hellomake.c hellofunc.c -I.* is called the **recipe**. In this case, the recipe only consists of 1 command. NOTE: There must be a tab before each command in the recipe.

---
## Better Makefiles
**A More Efficient Makefile:**

	CC=gcc

	CFLAGS=-I.

	hellomake: hellomake.o hellofunc.o

		$(CC) -o hellomake hellomake.o hellofunc.o

**Solution**: (Solves **Problem 2**) *CC* and *CFLAGS* are constants we defined, but they are special constants that communicate to *make* how we want to compile hellomake.c and hellofunc.c. 
*CC* is the C compiler to use, and *CFLAGS* is the list of flags to pass to the compilation command. By putting the object files *hellomake.o* and *hellofunc.o* as prerequisites, *make* knows it must first compile the .c files, and then build the executable hellomake. 
**Problem 3:** This makefile is missing dependency on the include files: If *hellomake.h* were changed, *make* would not recompile the .c files even though they need to be...

---
**We Can Do Better:**

	CC=gcc

	CFLAGS=-I.

	DEPS = hellomake.h

	%.o: %.c $(DEPS)

		$(CC) -c -o $@ $< $(CFLAGS)

	hellomake: hellomake.o hellofunc.o

		$(CC) -o hellomake hellomake.o hellofunc.o

**Solution:** (Solves **Problem 3**) The macro DEPS is the set of .h files on which the .c files depend. An additional rule is defined that applies to all files ending in the .o suffix (% notation). This rule tells *make* that... 
1. *%.o: %.c $(DEPS)* -> .o files depend on 1) the .c version of the file and 2) the .h files included in the DEPS macro
2. *$(CC)* -> To generate the .o file, compile the .c file using the compiler defined in the CC macro.
3. *-c* -> generate the object file
4. *-o $@* -> put the output of the compilation in the file named on the left side of the :
5. *$<* - the first item in the dependencies list
6. *$(CFLAGS)* - CFLAGS macro defined as above

**Problem 4:** Rule is written too explicitly. With many files and rules, this can get tedious.
---
**Even Cleaner:**

	CC=gcc

	CFLAGS=-I.

	DEPS = hellomake.h

	OBJ = hellomake.o hellofunc.o

	%.o: %.c $(DEPS)

		$(CC) -c -o $@ $< $(CFLAGS)

	hellomake: hellomake.o hellofunc.o

		$(CC) -o $@ $^ $(CFLAGS)

**Solution**: The macros $@ and $^ are the left and right sides of the :, respectively, which make the overall compilation rule more general.
**Problem 5:** Our .h files aren't in their own include directory, source code isn't in a src directory, and local libraries aren't in a lib directory.
**Problem 6:** Annoying .o files are hanging all over the place

---
**The Perfect Makefile:**

	IDIR =../include

	CC=gcc

	CFLAGS=-I$(IDIR)

	ODIR=obj

	LDIR =../lib

	LIBS=-lm

	DEPS = hellomake.h

	DEPS = $(patsubst %,$(IDIR)/%,$(DEPS))

	OBJ = hellomake.o hellofunc.o 

	OBJ = $(patsubst %,$(ODIR)/%,$(OBJ))


	$(ODIR)/%.o: %.c $(DEPS)

		$(CC) -c -o $@ $< $(CFLAGS)

	hellomake: $(OBJ)

		$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

	.PHONY: clean

	clean:

		rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~

**Solution**: (Solve **Problems 5**) This makefile is in the src directory. *IDIR* points to the inlcude directory, *CFLAGS* is in the include directory, *ODIR* points to the obj subdirectory within the src directory, *LIBS* includes the math directory. (Solves **Problem 6**) A rule is included for cleaning up your source and object directories if you type *make clean*. The .PHONY rule stops *make* from doing something with a file name clean.

## References
[A Simple Makefile Tutorial](https://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/)

[GNU make Manual](https://www.gnu.org/software/make/manual/html_node/index.html#SEC_Contents)

## Links
[202110182258](../202110182258) - A Rule in a Makefile

[202110182306](../202110182306) - A Target in a Makefile

[202110182309](../202110182309) - A Prerequisite in a Makefile

[202110182310](../202110182310) - A Recipe in a Makefile
## Tags
#embeddedSystems
