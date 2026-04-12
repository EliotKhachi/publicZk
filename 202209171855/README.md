# @GetMapping

The `@GetMapping` annotation allows us to define a URL `path` for Spring to redirect requests to.  

```java
@GetMapping("/hello")
    public String hello(@RequestParam(value = "name", defaultValue = "World") String name) {
        return String.format("Hello %s!", name);
    }
```
In the above example, we tell Spring to use our `hello()` method to answer requests that get sent to `http://localhost:8080/hello`.   

## Links
[202209171858](../202209171858) - Components of a URL
[202209171919](../202209171919) - @RequestParam

## References
[Spring Official Site - Quickstart Guide](https://spring.io/quickstart)

## Tags
#spring
