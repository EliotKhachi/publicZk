# Authentication Filter

## Context
Imagine you have just initialized an empty Spring Boot project, and you have a basic project structure with a controller, service, and repository for getting user details.   
## Install Spring Boot Security
Add to `pom.xml`:  
```
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-security</artifactId>

</dependency>
```

After you build and run your app, a security password is generated in memory and printed to the console, and if you try to go to your application root URL, you are greeted with a login page; where you login with `user` and `<generated-password>`.  

## See Next
[Security Filter Chain](../202403180311)

## References
[YouTube - Spring Boot Security JWT Authentication Series](https://www.youtube.com/watch?v=GjN5IauaflY&list=PL82C6-O4XrHe3sDCodw31GjXbwRdCyyuY)

## Tags
#spring
