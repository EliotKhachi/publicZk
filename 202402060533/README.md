# Phases of a Compiler

```mermaid
graph TD;
Start -->|character stream| Lexical Analyzer-->|token stream| Syntax Analyzer-->|syntax tree| Semantic Analyzer-->|syntax tree| Intermediate Code Generator-->|intermediate representation| Machine-Independent Code Optimizer -->|intermediate representation| Code Generator -->|target machine code| Machine Dependent Code Optimizer --> |target-machine code| End;

```

## References
*Compilers Principles, Techniques, and Tools; 2nd Edition* by Aho

## Tags
#programming #software
