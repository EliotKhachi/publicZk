# Type Inference

Type inference refers to the automatic detection of the *type* of an expression in a formal language.  

## Example
```java
int add_one(int x) {
    int result; /* declare integer result */

    result = x + 1;
    return result;
}
```
Converted to
```java
add_one(x) {
    var result;  /* inferred-type variable result */
    var result2; /* inferred-type variable result #2 */

    result = x + 1;
    result2 = x + 1.0;  /* this line won't work (in the C language) */
    return result;
}
```
Where `x` and `result` are declared by the compiler to be of type integer (determined at compile time) because `1` is an integer.

## Problems
`result2` adds complications because of the aggregate effects of the following causes (for the programming language C):  
* the `+` operator must be used on the same types.    
* `1.0` is a floating-point decimal.  
* To accomodate `result` and `result2, `x` would have to be an integer and a floating-point decimal simultaneously, which is impossible.   

## Type-Inference Algorithms
One solution to the ambiguous type-inference example above is simply to generate an error message to catch unintended consequences (such as in C).  

Another solution is a back-tracing type-inference algorthim that finds the most generic type to assign to the variable `x`, in this case, floating-point. The issue with this:
1. Type-inference becomes unintuitive to humans and bugs become harder to catch  
2. In this case, you can introduce precision issues that wouldn't have been there with an integer type

For these reasons, an error message may be preferred to type-inference algorithms.  

## References
[Wikipedia - Type Inference](https://en.wikipedia.org/wiki/Type_inference)  

## Tags
#programming
