# Linker Script

A *linker script* is a text file written in the *ld* command language [\[Linker Command Language: ld\]](../202202120015) made up of a series of *directives* [\[Linker Directives\]](../202202120014).   

## Example Linker Script for STM32F030x8  

```c
MEMORY
{
	FLASH(rx)	: ORIGIN = 0x08000000, LENGTH=64K
	RAM(xrw)	: ORIGIN = 0x20000000, LENGTH=8K
}

_estack = ORIGIN(RAM) + LENGTH(RAM);

SECTIONS
{
	.isr_vector:
	{
		. = ALIGN(4);
		KEEP(*(.isr_vector))
		. = ALIGN(4);
	}
	
	.text :
	{
		. = ALIGN(4);
		*(.text)
		*(.text*)
	}
```

## References
1. [OS Dev Wiki - Linker Scripts](https://wiki.osdev.org/Linker_Scripts)

## Tags
#embeddedSystems
