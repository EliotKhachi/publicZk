# Methods - Java

## What Problem do Methods Solve?
The alternative to using methods is copying and pasting code, which is unmanageable because of 2 problems:  
1. In large programs, the sheer amount of text is overwhelming and unorganized.  
2. In case there's a bug in a repeated section of code, we have to go and fix *each* instantiation, which is time-consuming and we are prone to making mistakes.  


With methods, you can define a set of instructions and put it away for later ease-of-use. If there's a bug in your program, then you go find the method(s) that the bug is inside and fix it there and only there.
## How Do You Declare a Method?
```java
	public static String Hello(String prompt) {
		return "Hello, " + prompt;
	}
```
## How Do You Call a Method?
```java
	public static void main(String[] args) {
		System.out.println(Hello("Eliot"));
	}
```
## Method Syntax Elements
* **Access modifier**  
* **Static modifier**  
* **Output type**  
* **Name**  
* **Parantheses**  
* **Parameter name**  
* **Code block**  


## What is *Overloading*?
Methods each have a *method signature*: the method name, and the type(s) and order of its parameter(s). Overloading is a concept in defining methods with the same name but different signatures. **Note:** The name(s) of the *parameters* do(es) *NOT* change the signature.  

```java

	public static String createFullName(String firstName, String lastName)  
	public static String createFullName(String prefix, String firstName, String lastName)  
```

## Tags
#programming #java
