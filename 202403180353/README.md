# Configuring Users and Roles

To configure your users and roles, you need to create `UserEntity` class, `Role` class, and a join table between the users and roles using a *many-to-many* relationship [[Database Table Mappings](../202212170355)].  

UserEntity Class  
```java
package com.pokemonreview.api.models;

import lombok.Data; // Automatically configures getters and setters
import lombok.NoArgsConstructor;
import javac.persistence.*;
import java.util.List;

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

    @ManyToMany(fetch = FetchType.Eager, cascade = CascadeType.ALL) // FetchType eager will show the role to the user
    @JoinTable(name = "user_roles", joinColumns = @JoinColumn(name = "user_id", referencedColumn = "id"),
        inverseJoinColumns = @JoinColumn(name = "role_id", referencedColumName="id"))
    private List<Role> roles = ArrayList<>();

}
```

Role Class
```java
package com.pokemonreview.api.models;

import lombok.Getter; // automatically set getters
import lombok.Setter; // automatically set setters
import lombok.NoArgsConstructor;

@Setter 
@Getter 
@Entity
@Table(name = "role")
@NoArgsConstructor
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

}
```

## Tags
#spring
