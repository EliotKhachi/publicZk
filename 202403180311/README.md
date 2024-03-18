# Security Filter Chain

## Filter Chain Structure 
The HTTP response and request pass through these filters, being passed between them by `HttpServletResponse` and `HttpServletRequest`.   
![image](https://www.eliotkhachi.dev/resources/zettel-images/Sun_Mar_17_08:11:26_PM_PDT_2024.png)

## Implement a Filter Chain
Add a package, i.e. `security`, and add a class, i.e. `SecurityConfig`.  
```java
import com.pokemonreview.api.security;

import org.springframework.context.annotation.Boot;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                csrf.disable() // disable to remove errors associated with an unconfigured csrf.  
                .authorizeRequests()
                .anyRequest().authenticated() // actually authenticate (whole point of security)  
                .and()
                .httpBasic() // Set HTTP as opposed to HTTPS
            return http.build(); // build the whole chain
    }

}
```
## See Next

## References
[YouTube - Spring Boot Security JWT Authentication Series](https://www.youtube.com/watch?v=GjN5IauaflY&list=PL82C6-O4XrHe3sDCodw31GjXbwRdCyyuY)

## Tags
#spring
