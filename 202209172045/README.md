# Software Architecture Layers 

Software architecture layers are used to organize code in the repository.  

**The Problem:** Medium to large-sized software applications contain hundreds to thousands of source files, with tens of thousands of lines of code, which becomes difficult to manage.  

**The Solution:** By chunking the program into conceptually relevant categories, called *layers*, software developers are able to keep their footing on the whole program by thinking of the application as groups of code that interact with each other rather than thousands of source files scattered in a directory.

## Software Chunking - Simple to Complex
1. Statements
2. Methods
3. Classes
4. Packages
5. Logical Layers
6. Physical Layers

## Minimal Architecture: Three Layers

Information flows from the user interface to the domain, and from the domain to the data access layer. Layers communicate with each other through *Models*. [202210090645](../202210090645) - Models in a Software Application  

*Information flows downward from the User Interface to the Domain to the Data Access in series (usually).*
    * User Interface - [202210090650](../202210090650) - User Interface Layer   
    * Domain - [202210090643](../202210090643) - Domain Layer  
    * Data Access - [202210090652](../202210090652) - Data Access Layer  

## Tags
#dev
