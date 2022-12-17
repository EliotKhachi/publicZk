# Mapping Database Tables to Objects 

Representing your database in your software application can be a tricky task. Being a design decision, there are many solutions, each depend on the relationship you are trying to represent.  

## Independent Tables / One-to-One Relationships
The most straightforward kind of relationship is one-to-one. They can be mapped with a single class. There's only one way to do it.  
```mysql
create table icecream_flavor (
    icecream_flavor_id int primary key auto_increment,
    icecream_ingredients_id int not null,
    flavor_name varchar(50) not null
```

```java
public class IcecreamFlavor{
    int icecreamFlavorId;
    int icecreamIngredientsId;
    String flavorName;
}
```

## One-to-Many Relationships
Consider how we could map the following one-to-many relationships:
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
This approach makes it easier to fetch icecream, but now we've complicated our object model by introducing circular references.  

## Many-to-Many Relationships


## Tags
#java #db #software
