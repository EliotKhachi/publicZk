# One-to-Many Relationship

Consider how we could map the following one-to-many relationships:
```mysql
create table icecream_flavor (
    icecream_flavor_id int primary key auto_increment,
    flavor_name varchar(50) not null
);  

create table icecream_ingredients (
    icecream_ingredients_id int primary key auto_increment,
    icecream_flavor_id not null,
    ingredient_id not null,
    ingredient_name not null
);
```
Doesn't seem too hard, let's just add a list of ingredients to each icecream flavor.
```java
public class IcecreamFlavor {
    List<Ingredient> ingredients;
}
```

The above approach is simple but how can we find all the icecreams that contain a certain ingredient? This would require a secondary fetch: We can resolve this by also adding an `Icecream` to the `Ingredient` class.  

```java
public class Ingredient {
    Icecream icecream;
}
```
This approach makes it easier to fetch icecream, but note that we've complicated our object model by introducing circular references.  

## Tags
