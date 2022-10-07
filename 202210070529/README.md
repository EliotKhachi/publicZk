# Readers and Writers

## Concept
A **reader** is a set of structured operations for reading bytes from an input stream. A **writer** is a set of structured operations for writing bytes to an output stream.  [202210070515](../202210070515) - Streams  

Readers or writers, depending on their purpose, utilize operations that are byte-based, text-based, or other-based. Each reader or writer employs a different "strategy" for parsing through data.     

## Implementations 
A `Scanner` is a reader that provides line-based methods for reading specific data types, and methods for reading everything all at once.  

The `print`, `printf`, and `println` methods are writer methods.   

## Tags
