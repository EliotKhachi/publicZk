# Exceptions 

As software developers, we will run into occasions where our code breaks in one of two ways:  
1. Code that may break in ways we didn't anticipate.  
2. Code that may break in ways we can anticipate.  

## Case 1
In Case #1, we must think creatively and implement *tests* to make sure our code is giving us the result we intended. Essentially, we throw a bunch of use cases at our program and hope it doesn't break. Luckily, we are smart and methodical in our approach for designing tests: [202209182302](../202209182302) - The Three Testing A's  

## Case 2
In Case #2, we can implement **Exceptions** in our code for scenarios that we can detect while the program is running. All of the following are exceptions:   
* A user enters a word when we require a number. --> *Prompt the user again* 
* We don't have permission to open a file. --> *Alert the user and suggest fixes (run the program with proper privileges?)*  
* The network goes down. --> *Alert the user and suggest fixes (check your internet connection)*   
* Computer runs out of memory. --> *Alert the user, and log the error and the state of the application before it crashes (if possible)* 

## Examples
```java
// BAD CODE:
String value = null;
int[] numbers = new int[0];

// 1. java.lang.NullPointerException
int length = value.length();

// 2. java.lang.ArrayIndexOutOfBoundsException
int element = numbers[1];

// 3. java.lang.NumberFormatException
int n = Integer.parseInt(value);
```
## Tags
