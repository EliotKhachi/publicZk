# Repository Pattern

The *repository pattern* provides a consistent strategy for accessing data in files, databases, and APIs.  

## Example
A *repository* is a class that stores and retrieves data from some data source; a repository ideally doesn't reveal the details about the data source. Here's an example of a `NationalForestRepository`, represented as an interface.

```java
interface NationalForestRepository{
    void add(NationalForest f);
    void findByName(NationalForest f);
    void update(NationalForst f);
    void findByState(String s);
    void deleteByName(String s);
}

```
The repository above can add, delete, and update of `NationalForest` objects, and fetch `NationalForest` objects by name or state. We don't know what data type(s) the `NationalForestRepository` object is using to store data, nor do we care.   

A respository may be called a DOA, or Data Access Object.  
[202209180024](../202209180024) - Data Access Object

[202209180027](../202209180027) - CRUD

## Tags
#software
