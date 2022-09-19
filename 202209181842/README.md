# Serialization 
*Serialization* is the process of converting an object's data to a string or byte sequence that can be saved or transmitted

## Example
```java
private void writeToFile(List<Object> objects) throws DataAccessException {
  try (PrintWriter writer = new PrintWriter(filePath)) {
    for (Object object : objects) {
      writer.println(objectToLine(object));
    }
  } catch (IOException ex) {
    throw new DataAccessException("Could not write to file path: " + filePath, ex);
  }
}

private String objectToLine(Object object) {
  StringBuilder buffer = new StringBuilder(100);
  buffer.append(object.getVar1()).append(delimiter);
  buffer.append(object.getVar2()).append(delimiter);
  buffer.append(object.getVar3()).append(delimiter);
  buffer.append(object.getVar4()).append(delimiter);
  return buffer.toString();
}
```

The opposite process is known as [deserialization](../202209181847).  

## Tags
#db
