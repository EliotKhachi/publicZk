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
    result2 = x + 1.0;  /* this line won't work (in the proposed language) */
    return result;
}
```
Where `x` and `var` are declared by the compiler to be of type integer (determined at compile time).  

[Wikipedia - Type Inference](https://en.wikipedia.org/wiki/Type_inference)  

## Tags
#programming
