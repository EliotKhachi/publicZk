# Concept of Segementation Fault or Core Dump 

A Core Dump or Segmentation fault is a specific error caused by accessing memory that "does not belong to you."

## Various Causes
* Trying to write a read-only memory

	int main()
	{
   		char *str;
 
  		/* Stored in read only part of data segment */
   		str = "GfG";    
 
   		/* Problem:  trying to modify read only memory */
   		*(str+1) = 'n';
   		return 0;
	}	
* Trying to dereference a pointer after freeing the memory block

	int* p = &num;
	free (p);
	*p = 110;

* Improper use of scanf() - scanf() function expects the address of a variable as an input
	

## References
[Core Dump (Segmentation fault in C/C++ - GeeksforGeeks](https://www.geeksforgeeks.org/core-dump-segmentation-fault-c-cpp/)

## Tags
#programming
