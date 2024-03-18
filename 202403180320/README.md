# UserDetailsService and UserDetails

The `UserDetailsService` pulls user details out of the database and creates `UserDetails` objects from them.  
![image](https://www.eliotkhachi.dev/resources/zettel-images/Sun_Mar_17_08:23:54_PM_PDT_2024.png)  

For the sake of simplicity of this tutorial, we'll create an `InMemoryUserDetailsManager` class to store user details in memory as opposed to the database.  


## antMatchers
`antMatchers` originated from Apache. They allow us to set permissions on certain URLs/endpoints specified by regex strings. `.mvcMatchers()` is an alternative to `antMatchers` that is simpler than regex.   

```java
    .antMatchers(HTTPMethod.GET, "api/pokemon/**").permitAll()
    .antMatchers(HTTPMethod.POST).authenticated()  
```

## Security Config
```java
package com.pokemonreview.api.security;  

import org.springframework.context.annotation.Boot;  
import org.springframework.context.annotation.Configuration;  
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;  
import org.springframework.security.config.annotation.web.builders.HttpSecurity; 
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.http.HttpMethod;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;  

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
        csrf.disable() // disable to remove errors associated with an un
        configured csrf.
        .authorizeRequests()
        .antMatchers(HttpMethod.GET).permitAll(); // allow get requests for all endpoints (for this tutorial example)
        // .antMatchers(HttpMethod.GET).hasRole("<string>"); // allow get requests for any user with the given role   
        .anyRequest().authenticated() // actually authenticate (whole point of security)
        .and()
        .httpBasic() // Set HTTP as opposed to HTTPS
    return http.build(); // build the whole chain
    }

    @Bean
    public UserDetailsService users() {
        UserDetails admin = User.builder()
            .username("admin")
            .password("password")
            .roles("ADMIN")
            .build();
        UserDetails user = User.builder()
            .username("user")
            .password("password")
            .roles("USER")
            .build();
    }

    return new inMemoryUserDetailsManager(admin, user);
}
```

## See Next
Configuring Users and Roles

## References
[YouTube - Spring Boot Security JWT Authentication Series](https://www.youtube.com/watch?v=GjN5IauaflY&list=PL82C6-O4XrHe3sDCodw31GjXbwRdCyyuY)  

## Tags
#spring
