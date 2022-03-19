# Pointers 

A pointer is a data type in C/C++ that contains a memory address. That is it. It is that simple. 
```C++
	int age = 10;
	double gpa = 3.4;
	char grade = 'A';
```
The above examples are variables of other data types in C. Each variable's value is stored somewhere in memory. In other words, each variable has a memory address. To access their memory address, use the '&' (ampersand) symbol:

	&age
	&gpa
	&grade

To store the variable's memory address, declare a pointer variable:

	int* pAge = &age;
	double* pGpa = &gpa;
	char* pGrade = &grade;

A few things to note are...
1. In this case, I named the pointer variable the name of the data variable preceded by a 'p' for simplicity. 
2. The '\*' (asterisk) symbol is used to declarea a pointer variable.
3. The datatype keyword that precedes the pointer variable name does NOT declare the datatype. The datatype is already declared as a pointer by the '\*' symbol, remember? Instead, the datatype keyword serves to tell the computer how many bytes the pointer variable is.
	* In fact, a pointer of void type can be declared, but must be converted to the correct type before use.
	
	int* p = &num; // intialize a pointer to an int
	void* p1 = p; // initialize a void pointer from an int pointer
	int* p2 = p1; // initialize an int pointer from a void pointer

## References
[C Programming For Beginners](https://www.youtube.com/watch?v=KJgsSFOSQv0)
[C/C++ DevDocs](https://devdocs.io/c/language/pointer)

# Tags
#C
