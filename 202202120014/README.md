# Linker Directives

Linker *directives* tell the Linker [\[Linker\]](../202202120018) where the available memory is and how they should be used. They reflect exactly the memory resources and memory map of the target microcontroller [\[Memory Map of a Microcontroller\]](../202202101936).  

## Kinds of Directives
* [\[LIBPATH\]](../202202120235) - provides a search path for files to be included (this is optional)  

* [\[FILES\]](../202202120240) - specifies object files for linking  
* [\[CODEPAGE\]](../202202120241) - allocates program memory including program code, configuration data, and device identification  
* [\[ACCESS BANK\]](../202202120236) - allocates data memory e.g. RAM and SFR  
* [\[DATABANK\]](../202202120239) - similar to *ACCESSBANK*. Specifies banked RAM  
* [\[STACK SIZE\]](../202202120237) - Allows a name identified in the source code with a #pragma directive to be linked across to a block of memory identified in the [\[Linker Script\]](../202202102126)   

## References 
1. [\[Linker Script (Science Direct)\]](https://www.sciencedirect.com/topics/engineering/linker-script)  

## Links
1. [\[Linker Script\]](../202202102126)  

## Tags
#embeddedSystems
