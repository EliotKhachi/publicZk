# Example Grammars Denoted in EBNF Notation

## Example 1
`digit excluding zero = "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;`
`digit                = "0" | digit excluding zero ;`  

The first rule defines `digit excluding zero` to be replaceable by any symbol 1-9.  
The second rule defines `digit`` to be replaceable by `digit excluding zero` or the s ymbol 0.  

With a start symbol of `digit`, the set of all possible strings is "1","2","3",..."9". This set is the *language* defined by the grammar.  

## Example 2
`S = "A",S`  
`S = "A"`
The first rule defines `S` to be replaceable by `"A"` and `S`.  
The second rules defines `S` to be replaceable by `"A"`.  

With a start symbol of `S`, the set of all possible strings is "A", "AA", "AAA", "AAA", etc. because you can apply the first rule recursively as many times as you want before terminating it with the second rule. As you can see, even simple grammars can yield an infinite set of possible terminal strings.   

## Tags
#cs
