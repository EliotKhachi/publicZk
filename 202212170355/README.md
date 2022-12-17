# Mapping Database Tables to Objects

Representing your database in your software application can be a tricky task. Being a design decision, there are many solutions, each depend on the relationship you are trytrying to represent.  

## Independent Tables / One-to-One Relationships
The most straightforward kind, one-to-one relationships, can be mapped with a single class. There's only one way to do it. Consider a table of icecream flavors:  
```mysql
create table icecream_flavor (
    icecream_flavor_id int primary key auto_increment,
    icecream_ingredients_id int not null,
    flavor_name varchar(50) not null
```

```java
public class IcecreamFlavor{
    int icecreamFlavorId;
    String name;
}
```

## One-to-Many Relationships
Then you have one-to-many relationships. Each icecream flavor has multiple ingredients. The `icecream_ingredients` table has multiple rows with the same `icecream_flavor_id`  

```mysql
create table icecream_flavor (
    icecream_flavor_id int primary key auto_increment,
    flavor_name varchar(50) not null

create table icecream_ingredients (
    icecream_ingredients_id int primary key auto_increment,
    icecream_flavor_id not null,
    ingredient_id not null,
    ingredient_name not null
)
```
```java
public class IcecreamFlavor {
    List<Ingredient> ingredients;
}
```
The above approach is simple but it requires a secondary fetch to fetch an ingredient's icecream. We can resolve this by also adding an `Icecream` to the `Ingredient` class.

```java
public class Ingredient {
    Icecream icecream;
}
```
This approach makes it easier to fetch icecream, but now we've complicated our object model by introducing circular references.  

## Many-to-Many Relationships



## Tags
#java #db #software
