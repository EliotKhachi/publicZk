# Linker Directive: SECTION

The *SECTION* linker directive allows a name in the source code (identified by **#pragma**) to be linked across to a block of memory in the [\[Linker Script\]](../202202102126).  

## Implementation
```c
SECTION	NAME=CONFIG	ROM=config
```

Here the connection from the source code to the block of memory is being made for configuration memory. In this case the name is identified by the use of `#pragma config` in the source code.  

## References
1. [\[Linker Script - Science Direct\]](https://www.sciencedirect.com/topics/engineering/linker-script)  

## Other Links
1. [\[Linker Directives\]](../202202120014)  
## Tags
