# Deserialization
*Deserialization* is the process of converting a delimited string or byte sequence 
into an object type.  

## Example 
```java
private Object lineToObject(String line) {
    String[] fields = line.split(delimiter);
		
		// It's proper convention to make sure you serialized the data properly. In this case, we expect 4 attributes.  
    if (fields.length != 4) { 
        return null;
    }

    return new Object(
            Integer.parseInt(fields[0]),
            fields[1],
            fields[2],
            "true".equals(fields[3])
    );
}
```
## Tags
#db
