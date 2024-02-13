# Phases of a Compiler

```mermaid
graph TD;
  Start -->|character stream| LexicalAnalyzer-->|token stream| SyntaxAnalyzer-->|syntax tree| SemanticAnalyzer-->|syntax tree| IntermediateCodeGenerator-->|intermediate representation| MachineIndependentCodeOptimizer -->|intermediate representation| CodeGenerator -->|target machine code| MachineDependentCodeOptimizer --> |target-machine code| End;

```

The first two steps are lexical analysis and syntax analysis, and look something like this:  
![image](https://www.eliotkhachi.dev/resources/zettel-images/Mon_Feb_12_08:24:04_PM_PST_2024.png)

## Links
[LexicalAnalyzer](../202402060541)

## References
[1] *Compilers Principles, Techniques, and Tools; 2nd Edition* by Aho
[2] [What is a Compiler?](../202402060504)

## Tags
#cs
