# Software Architecture Layers

Software architecture layers are used to organize code by using a common and extremely powerful technique called *chunking*. 

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
*Information flows to the Model from the User Interface, Domain, and Data Access in parallel.*
* Model
*Information flows downward from the User Interface to the Domain to the Data Access in series (usually).*
    * User Interface
    * Domain 
    * Data Access

The foundation of each of these layers can be built with Spring dependencies in Java by configuring `beans`.
[202209150538](../202209150538) - Spring Beans Configuration

## Models
Not exactly a layer. All layers point to Models. Models represent domain *data*, but not *behavior*, and they don't enforce any rules for any of the layers. Rather, models represent a sort of shared vocabulary between layers to promote information flow. The user interface layer can't do its job without knowing a bit about the domain. The same goes for the data access layer.  

## User Interface
Classes that present data to the user to add, edit, or delete data.

## Domain
An application's domain is its real-world problem space. It includes the nounds and verbs used to describe core concepts and defines relationships between concepts. This is the most important application layer, assuming we can confidently handle the UX (user experience) and data management issues. The domain doesn't care where the data used to represent these nouns and verbs comes from. That's a problem for the  data access layer to handle.  

## Data Access
Any class that reads from or writes to files, databases, or APIs, belongs to a separate layer.

## Tags
#architecture #software #dev
