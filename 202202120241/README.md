# Linker Directive: CODEPAGE 

The *CODEPAGE* directive is used to allocate program memory on the microcontroller and conveys the microcontroller memory maps [\[Memory Map of a Microcontroller\]](../202202101936).  

## Implementation
```c
CODEPAGE	NAME=page	START=0x0	END=0x3FFF	
CODEPAGE	NAME=idlocs	START=0x200000	END=0x200007	PROTECTED	
CODEPAGE	NAME=config	START=0x300000	END=0x30000D	PROTECTED	
CODEPAGE	NAME=devid	START=0x3FFFFE	END=0x3FFFFF	PROTECTED	
CODEPAGE	NAME=eedata	START=0xF00000	END=0xF000FF	PROTECTED	
```

The following is a table associating the contents of memory being allocated with each *NAME*:  
|NAME|Type of Memory|
|-|-|
|page|main block of memory; program code|
|idlocs||
|config|configuration data|
|devid|device identification|

## References
1. [\[Linker Script - Science Direct\]](https://www.sciencedirect.com/topics/engineering/linker-script)  

## Other Links
1. [\[Linker Directives\]](../202202120014)  
## Tags
