# Linker Scripts

A *linker script* is a text file made up of a series of linker *directives* which tell the *linker* where the available memory on the microcontroller is and how it should be used. It should reflect exactly the memory resources and memory map [\[Memory Map of a Microcontroller\]](../202202101936) of the target microcontroller.  

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
```c

## References
1. [OS Dev Wiki - Linker Scripts](https://wiki.osdev.org/Linker_Scripts)

## Tags
#embeddedSystems
