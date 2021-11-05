# Linux Kernal Interals & Debugging  

The Linux terminal uses kernel modules for device drivers, network protocols, file system management, and for many, many more other uses. Modules are basically pieces of code that the kernel runs when needed or *commanded* (hence commands in the terminal), and don't run when unneeded. Many modules when ran display text to the terminal.
---
**Typical Example of Code for a Module**

	#include <linux/module.h>
	#include <linux/init/h>

	static int __init my_init(void)
	{
		pr_info("Hello: Module loaded at 0x%p\n", myinit);
		return 0;
	}

	static void __exit my_exit(void)
	{
		pr_info("Bye: Module unloadedfrom 0x%p\n", my_exit);
	}
	
	// Macros load the functions
	module_init(my_init);
	module_exit(my_exit);

	MODULE_AUTHOR("A GENIUS"); // Documentation for authorship
	MODULE_LICENSE("GPL V2);   // GNU Version 2 library used -> has implication for use of this module
---
**Compiling Modules**

The *kernel source* is needed to compile a module by first generating a .config file containing the necessary configuration and dependency information. *Makefiles* perform the compilation.



## References
[Linux Training Course: Linux Kernel Internals & Debugging](https://www.youtube.com/watch?v=Ni_FuuYmsHw)

## Links
[Makefiles](../202110182235)

## Tags
#linux
