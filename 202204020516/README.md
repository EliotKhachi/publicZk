# Selecting a Data Structure

Data structures are used to organize, handle, and/or manipulate *multiple* elements of *primitive* or *complex* data types. To select a data structure, let's identify our needs by asking some questions.

## Questions To Ask Yourself
1. Will we be accessing the elements in a particular order?

2. Are any elements connected to each other in some way?

3. Are duplicates allowed?

It may not be obvious how to organize large pools of data; so, try to break up your data into chunks that fall into categories defined by yes/no answers to the questions above. E.g. *Some* elements need to be ordered, connected, unique, and *some* don't.

## Types of Data Structures, Categorized
**Driven by Order**
* List - ordered sequence of elements.
* Queue - a *list* where elements are processed in a FIFO fashion.
* Stack - a *list* where elements are processed in a LIFO fashion.
**Driven by Uniqueness**
* Set - unordered collection of unique elements
* Hash Table/Hash Map - a *set* whose elements are accessed using a key that "maps" to a value.  
**Driven by Connectivity**
* Graph - unordered collection of linked/connected elements. Structure of connections can vary.  
* Tree - a graph where the structure of connections is hierarchical.


## Tags
#software
