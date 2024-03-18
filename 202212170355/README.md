# Database Table Mappings

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
[One-to-Many Relationship](../202403180409)  
[Many-to-Many Relationship](../202403180401)  

## Tags
#java #db #software
