# Typical Language Processing System

```mermaid
graph TD;
  Start -->|source program| Preprocessor -->|modified source program| Compiler -->|target assembly program| Assembler -->|relocatable machine code| Linker_Loader -->|library files, relocatable object files| target_machine_code --> End;

```
```
Start
|  
v  
[source program]  
|  
v  
[Preprocessor]  
|  
v  
[modified source program]  
|  
v  
[Compiler]  
|  
v  
[target assembly program]  
|  
v  
[Assembler]  
|  
v  
[relocatable machine code]  
|  
v  
[Linker/Loader] --> [library files, relocatable object files]  
|  
v  
[target machine code] --> End  
```

## Tags
#programming #software
