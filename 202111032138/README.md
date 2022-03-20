# TypeDef Declaration in C

**Typedef declaration** - provides a way to declare an identifier as a type alias, to be used to replace a possibley complex type name.

	typedef int int_t; // declared int_t to be an alaid for the type int

	int_t age = 46;

Here's a more complicated usage to showcase the possibilites of *typdef*

	typedef char char_t, *char_p, (*fp)(void); 	// declared char_t to be an alias for char
							// char_p to be an alias for char*
							// fp to be an alias for char(*)(void)

## References 
[DevDocs - TypeDef declaration](https://devdocs.io/c/language/typedef)

## Tags
#software
