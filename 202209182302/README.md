# The Three Testing A's 

The three testing A's are:

1. **Arrange:** First *arrange* the tests to be ran properly, including but not limited to using a known good state [202209182233](../202209182233) - Known Good State.  

2. **Act:** Next, *act* by calling the method you are testing.   
3. **Assert:** In each of your test methods, *assert* certain results you expect to see, while carefully considering the known good state you are operating with.  

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
**Act:** Then the memory is added to the repository.   
**Assert:** The newly added memory instance is verified to have the correct fields, including `Id`, `From`, and `Content`. The `size()` of the memories repository is also verified to have been incremented.

## Tags
#java #software 
