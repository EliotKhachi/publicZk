# Linker Directive: DATABANK

The *DATABANK* directive is used to specify banked RAM.  

## Implementation
```c
DATABANK	NAME=gpr0	START=0x80	END=0xFF  
DATABANK	NAME=gpr1	START=0x100	END=0x1FF  
DATABANK	NAME=gpr2	START=0x200	END=0x2FF  
```

The *DATABANK* directive is similar to *ACCESSBANK* [\[Linker Directive: ACCESS BANK\]](../202202120236), in that it uses the same format, but each block is available to be used by the Linker [\[The Linker\]](../202202120018), so none is `PROTECTED` [\[Command Language: Protected Key Word\]](../202202151856).  

## References
1. [\[Linker Script - Science Direct\]](https://www.sciencedirect.com/topics/engineering/linker-script)  

## Other Links
1. [\[Linker Directives\]](../202202120014)  

## Tags
#embeddedSystems
