# Linker Directive: ACCESS BANK

An *ACCESS BANK* linker directive allocates data memory in a linker script.   

## Syntax
```c
ACCESSBANK	NAME=accessram	START=0x0	END=0x7F
.
.
.
ACCESSBANK	NAME=accesssfr	START=0xF80	END=0xFFF	PROTECTED
```  
Here we allocate the following according to microcontroller specifications:  
1. RAM block labelled **accessram** in the address range __ to __  
2. SFR memory block labelled **accesssfr** in the address range __ to __ and specified to be `PROTECTED` [\[Protected Key Word in ld\]](../202202151856).  

## References
1. [\[Linker Script - Science Direct \]](https://www.sciencedirect.com/t    opics/engineering/linker-script)

## Other Links
1. [\[Linker Directives\]](../202202120014)  
2. [\[Binary vs Hexadecimal\]](../202110241835)  
## Tags
#embeddedSystems
