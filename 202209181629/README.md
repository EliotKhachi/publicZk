# Throw Keyword

The `throw` statement allows you to create a custom error, by coupling it with an **exception type**: `ArithmeticException`, `FileNotFoundException`, `ArrayIndexOutOfBoundsException`, `SecurityException`, etc.. 

## Example
An exception is thrown if `age` is below 18 and stops executing code. In this sense, the `else` statement is not really necessary. The code block can simply be written after the `if` statement is completed.  

```java
public class Main {
  static void checkAge(int age) {
    if (age < 18) {
      throw new ArithmeticException("Access denied - You must be at least 18 years old.");
    }
    else {
      System.out.println("Access granted - You are old enough!");
    }
  }

  public static void main(String[] args) {
    checkAge(15); // Set age to 15 (which is below 18...)
  }
}

`output`:
Exception in thread "main" java.lang.ArithmeticException: Access denied - You must be at least 18 years old.
        at Main.checkAge(Main.java:4)
        at Main.main(Main.java:12) 

```

## Tags
#java #software
