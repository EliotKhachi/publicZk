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
  buffer.append(object.getId()).append(delimiter);
  buffer.append(cleanField(object.getFrom())).append(delimiter);
  buffer.append(cleanField(object.getContent())).append(delimiter);
  buffer.append(object.isShareable());
  return buffer.toString();
}
```

The opposite process is known as [deserialization](../202209181847).  

## Tags
#db
