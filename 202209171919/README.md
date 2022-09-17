# @RequestParam

`@RequestParam` is an annotation used to tell Spring to expect a parameter to be passed into the method, and if it's not, the parameter will use a default value.

```java
@GetMapping("/hello")
    public String hello(@RequestParam(value = "name", defaultValue = "World") String name) {
        return String.format("Hello %s!", name);
    }
```
Here `@RequestParam` tells Spring to expect a parameter named `name` into the `hello()` method, and perscribes a default value of "World" to it.

## Links
[202209171855](../202209171855) - @GetMapping

## References
[Spring Official Site- Quickstart Guide](https://spring.io/quickstart)

## Tags
#spring
