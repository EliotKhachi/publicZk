# Configuring Users and Roles

To configure your users and roles, you need to create `UserEntity` class, `Role` class, and a join table between the users and roles.  
```java
package com.pokemonreview.api.models;

import lombok.Data; // Automatically configures getters and setters
impor lombok.NoArgsConstructor;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
public class UserEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String username;

    private String password;

}
```

```java
package com.pokemonreview.api.models;

import lombok.Getter; // automatically set getters
import lombok.Setter; // automatically set setters
import lombok.NoArgsConstructor;

@Setter 
@Getter 
@Entity
@Table(name = "roles")
@NoArgsConstructor
public class Roles {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

}
```



## Tags
#spring
