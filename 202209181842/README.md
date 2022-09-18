# Serialization
*Serialization* is the process of converting an object's data to a string or byte sequence that can be saved or transmitted

## Example
```java
private void writeToFile(List<Memory> memories) throws DataAccessException {
  try (PrintWriter writer = new PrintWriter(filePath)) {
    for (Memory memory : memories) {
      writer.println(memoryToLine(memory));
    }
  } catch (IOException ex) {
    throw new DataAccessException("Could not write to file path: " + filePath, ex);
  }
}

private String memoryToLine(Memory memory) {
  StringBuilder buffer = new StringBuilder(100);
  buffer.append(memory.getId()).append(delimiter);
  buffer.append(cleanField(memory.getFrom())).append(delimiter);
  buffer.append(cleanField(memory.getContent())).append(delimiter);
  buffer.append(memory.isShareable());
  return buffer.toString();
}
```

The opposite process is known as *deserialization*. 
[202209181847](../202209181847) - Deserialization

## Tags
#software #database
