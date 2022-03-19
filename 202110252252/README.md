# Pointers 

A pointer is a data type in C/C++ that contains a memory address. That is it. It is that simple. 

	int age = 10;
	double gpa = 3.4;
	char grade = 'A';

The above examples are variables of other data types in C. Each variable's value is stored somewhere in memory. In other words, each variable has a memory address. To access their memory address, use the '&' (ampersand) symbol:

	&age
	&gpa
	&grade

To store the variable's memory address, declare a pointer variable:

	int* pAge = &age;
	double* pGpa = &gpa;
	char* pGrade = &grade;

A few things to note are...
1. The '\*' (asterisk) symbol is used to declare a pointer variable.
2. When declaring a pointer, the actual datatype keyword (e.g. `double`)does NOT declare the datatype. The datatype keyword simply tells the compiler how much memory to allocate for the pointer. Remeber that the *pointer* is the data type, not the `double`, or `int`, or `char`, etc.  
3. A pointer of void type can be declared, but must be converted to the correct type before use.
	
	int* p = &num; // intialize a pointer to an int
	void* p1 = p; // initialize a void pointer from an int pointer
	int* p2 = p1; // initialize an int pointer from a void pointer

## References
[C Programming For Beginners](https://www.youtube.com/watch?v=KJgsSFOSQv0)
[C/C++ DevDocs](https://devdocs.io/c/language/pointer)

# Tags
#C #software
