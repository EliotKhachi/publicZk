# Redirecting Standard Input

Often times, commands require an input.  

When an input isn't given, the shell prompts you for one, waiting for you to type it out, finishing with `Ctrl-d`.  

For example,
`$ wc -l` *command*
*shell prompts you for an input, and you type:*
```hello
my
name
is
Eliot
```
*press `Ctrl-d` to submit*
`4` *command output*

This is referred to as *standard input*.  

Another way to provide input is to give the command a file to read using the `<` shell operator.  
`$ wc -l < myfile` *command*
`4` *output*

## Tags
#linux
