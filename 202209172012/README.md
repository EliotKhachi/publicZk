# @ComponentScan 

Tells Spring to look for other components, configuration, and services in one-level up from the imported package (in this java file), letting it find the controllers.  

## For Example
In the below example, `@SpringBootApplication` tells Spring to look for other components, configurations, and services in `com.example`.  

```java
package com.example.restservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class RestServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(RestServiceApplication.class, args);
	}

}
```

## References
[Spring - Building A Rest Service](https://spring.io/guides/gs/rest-service/#initial)

## Tags
#spring
