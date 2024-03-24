# One-to-One Relationships

The most straightforward kind of relationship is one-to-one. They can be mapped
with a single class. There's only one way to do it.  

```mysql
create table icecream_flavor (
    icecream_flavor_id int primary key auto_increment,
    icecream_ingredients_id int not null,
    flavor_name varchar(50) not null
);
```

```java
public class IcecreamFlavor{
    int icecreamFlavorId;
    int icecreamIngredientsId;
    String flavorName;
}
```
## Tags
