# The Three Testing A's

The three testing A's are:

1. **Arrange:** First *arrange* the tests to be ran properly.a known good state [202209182233](../202209182233) - Known Good State.  

2. **Act:** Next, *act* by calling the method you are testing.   
3. **Assert:** In each of your test methods, *assert* certain results to expect to see, given the known good state you are operating on.  

## Example
The `MemoryFileRepositoryTest` class holds all the test methods for the `MemoryFileRepository` class. Here is the `add()` test method, a "C" operation in CRUD. [202209180027](../202209180027) - CRUD. 

```java
@Test
void add() throws DataAccessException {
    Memory memory = new Memory();
    memory.setFrom("A Friend");
    memory.setContent("A special memory.");

    Memory actual = repository.add(memory);
    assertEquals(4, actual.getId());

    List<Memory> all = repository.findAll();
    assertEquals(4, all.size());

    actual = all.get(3); // the newly-added memory
    assertEquals(4, actual.getId());
    assertEquals("A Friend", actual.getFrom()); // confirm all fields
    assertEquals("A special memory.", actual.getContent());
    assertFalse(actual.isShareable());
}
```
**Arrange:** First, a new memory is initialized.  
**Act:** Then the memory is added to the repository, saving the return to the Memory instance `actual`, representing the Memory object that was actually added.  
**Assert:** Check if the added memory has the correct `Id`, the size of the repository has incremented, and the fields of the newly added memory matches that of the created memory. 

## Tags
#java #software 
