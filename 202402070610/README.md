# Production Rules

Production rules in EBNF is a *rewrite rule* that specifies a symbol substitution.   

The production rule below specifies two production rules.  
`digit excluding zero = "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;`
`digit                = "0" | digit excluding zero ;`

The first defines a nonterminal symbol, `digit excluding zero`, to be any terminal symbol 1-9.  
The second defines a nonterminal symbol, `digit`` to be `digit excluding zero` or 0.  
## References
[Wikipedia - Production Rules - Computer Science](https://en.wikipedia.org/wiki/Production_(computer_science))

## Tags
