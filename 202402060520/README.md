# Typical Language Processing System

```mermaid
graph TD;
source program --> Preprocessor;
modified source program --> Compiler;
target assembly program --> Assembler;
relocatable machine code --> Linker/Loader;
library files, relocatable object files --> Linker/Loader;
Linker/Loader --> target machine code;

```

## Tags
#programming #software
