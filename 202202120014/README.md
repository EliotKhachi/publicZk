# Linker Directives

Linker *directives* tell the Linker [\[Linker\]](../202202120018) where the available memory is and how they should be used. They reflect exactly the memory resources and memory map of the target microcontroller [\[Memory Map of a Microcontroller\]](../202202101936).  

## Kinds of Directives
* **LIBPATH** - provides a search path for files to be included (this is optional) 
* **FILES** - specifies object files for linking  
* **CODEPAGE** - allocates program memory including program code, configuration data, and device identification
* **ACCESSBANK** - allocates data memory/ship  
* **DATABANK** - specifies banked RAM

* [\[LIBPATH\]](../202202120235)  
* [\[ACCESS BANK\]](../202202120236)  
* [\[STACK SIZE\]](../202202120237)  
* [\[DATABANK\]](../202202120239)  
* [\[FILES\]](../202202120240)  


## Tags
#embeddedSystems
