# Linker Scripts

A *linker script* is a text file made up of a series of linker *directives* which tell the *linker* where the available memory on the microcontroller is and how it should be used. It should reflect exactly the memory resources and memory map [\[Memory Map of a Microcontroller\]](../202202101936) of the target microcontroller.  

## Example Linker Script
```c
// File: 18f2320.lkr  
// Sample linker script for the PIC18F2320 processor  

LIBPATH .  

FILES c018i.o  
FILES clib.lib  
FILES p18f2420  

CODEPAGE	NAME=page	START=0x0	END=0x3FFF  
CODEPAGE	NAME=idlocs	START=0x200000	END=0x200007	PROTECTED  
CODEPAGE	NAME=config	START=0x300000	END=0x30000D	PROTECTED  
CODEPAGE	NAME=devid	START=0x3FFFFE	END=0x3FFFFF	PROTECTED  
CODEPAGE	NAME=eedata	START=0xF00000	END=0xF000FF	PROTECTED  

ACCESSBANK	NAME=accessram	START=0x0	END=0x7F  
DATABANK	NAME=gpr0	START=0x80	END=0xFF  
DATABANK	NAME=gpr1	START=0x100	END=0x1FF  
DATABANK	NAME=gpr2	START=0x200	END=0x2FF  
ACCESSBANK	NAME=accesssfr	START=0xF80	END=0xFFF	PROTECTED

SECTION		NAME=CONFIG	ROM=config

STACK SIZE=0x100 RAM=gpr2
```

## References
1. [OS Dev Wiki - Linker Scripts](https://wiki.osdev.org/Linker_Scripts)

## Tags
#embeddedSystems
