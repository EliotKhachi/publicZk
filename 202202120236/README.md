# Linker Directive: ACCESS BANK

An *ACCESS BANK* linker directive allocates data memory in a linker script.  

## SYNTAX
```c
ACCESSBANK	NAME=accessram	START=0x0	END=0x7F
.
.
.
ACCESSBANK	NAME=accesssfr	START=0xF80	END=0xFFF	PROTECTED
```  
Here we correctly allocate according to microcontroller specifications:  
1. RAM block labelled **accessram** in the address range 0 to 7F  
2. SFR memory block labelled **accesssfr** and specified to be *protected*.  
## Other Links
1. [\[Linker Directives\]](../202202120014)  
2. [\[Linker Script\]](../202202102126)  

## Tags
#embeddedSystems
