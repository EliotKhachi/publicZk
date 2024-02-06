# Lexical Analysis

Lexical analysis is the process of taking in a character stream making up the source code, and grouping meaningful character sequences into *lexemes*, and assigning a *token* to each lexeme.  

Tokens come in the form,
*<token-name, attribute-value>*

## Example
`position = initial + rate * 60` comes out to 7 lexemes:  
1. \<id,1\>
2. <=>
3. \<id,2\>
4. \<+\>
5. \<id,3\>
6. \<\*\>
7. \<60\>

A symbol-table is created in memory in the background for all the identifiers (id). Non-identifier tokens, i.e. operators, do not need to be in a symbol-table [1]. 
|Id|name|type|
|--|----|----|
|1|position|...|
|2|initial|...|
|3|rate|...|

See next --> Syntax Analysis

## Footnotes
Technically, we should also make a token like <number,4> for lexeme `60`, but we are deferring the discussion of numbers for now.  

## References
[1] *Compilers Principles, Techniques, and Tools; 2nd Edition* by Aho
[2] [Phases of a Compiler](../202402060533)

## Tags
#programming
