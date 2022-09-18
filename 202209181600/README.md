# Try...Catch

The life of a progammer is full of bugs and errors. Debugging is a beast of its own (see link here), but errors due to wrong input or other unforeseable things can be handled by throwing an **exception**.  

## Java Try and Catch 
The `try` statement allows you to define a block of code to be tested for errors while it is being executed.

The `catch` statement allows you to define a block of code to be executed, if an error occurs in the try block.

The `try` and `catch` keywords come in pairs:

```java
public class Main {
  public static void main(String[ ] args) {
    try {
      int[] myNumbers = {1, 2, 3};
      System.out.println(myNumbers[10]);
    } catch (Exception e) {
      System.out.println("Something went wrong.");
    }
  }
}
```
In the above example, `myNumbers` is an array with a length of 3; therefore, trying to reference an index of 10 will generate an error: `ArrayIndexOutOfBoundsException: 10`. Thus, the use of a `try` and `catch` statement can be used to "rewrite" the error message. Not only that, but if you implement the `finally` statement after the `catch`, you can execute code after the `try...catch` regardless of the result:  

```java
finally {
      System.out.println("The 'try catch' is finished.");
    }
```

## References
[W3Schools Java Exceptions](https://www.w3schools.com/java/java_try_catch.asp)

## Tags
#java #software #programming
