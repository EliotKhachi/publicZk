# Java Source Code

Java source code (`.java`) is the code that is written by the programmer. They can contain a public class, multiple private classes, interface definition, enumerations, standalone methods, and/or anonymous inner classes.  

## Interface
```java
// MyInterface.java
public interface MyInterface {
    void someMethod();
}
```
## Enumeration
```java
// Color.java
public enum Color {
    RED, GREEN, BLUE
}
```

## Stand-Alone Method
```java
// MathUtils.java
public class MathUtils {
    public static int add(int a, int b) {
            return a + b;
                }
}
```

## Anonymous Inner Class
```java
// Using an anonymous inner class
button.addActionListener(new ActionListener() {
    @Override
        public void actionPerformed(ActionEvent e) {
                // Action to perform
                    }
});
```

## Tags
#java
