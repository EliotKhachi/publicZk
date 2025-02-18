# Regular Expression Basics  

Regular expressions are used to *define* a pattern of text and use that pattern to match other portions of text within a file.

## Beginning and End of Line Patterns

**1. ^ ** - Matches the string if it occurs at the *beginning* of a line. Specifies the character(s) *after* the **^** to form the *pattern*.  
*Example:* '^aa' returns all lines of text that begin with "aa".   
**2. $ ** - Matches string if it occurs at the *end* of a line. Specifies the character(s) *before* the **$** to form the *pattern*.  
*Example:* 'aa$' returns all lines of text that end with "aa".  

*Combined Example:* '^aa$' returns all lines of text that *end and begin* with "aa".  


## Quantifiers

**1. ? ** - Matching the string becomes optional. Specifies character(s) *before* the **?**.  
*Example:* '^a?$' returns all lines of text that 1) begin with "a" or no "a" and 2) end with an "a" or no "a"

**2. + ** - 
*NOTE: + is not included in basic regular expressions

## Tags
#programming
