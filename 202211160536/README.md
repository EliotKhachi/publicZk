# Database Relationships

**One-To-Many**
---
In a *one-to-many* relationship, a row in one table is related to zero or more rows in another table; the
relation flows in one direction. To create a one-to-many relationship, the primary key of the "one" table
is added as a **foreign key** to the "many" table.

e.g. One hunter kills many animals, One rock band has many fans, One author has many books.  

**Many-To-Many**
---
In a *many-to-many* relationship two or more concepts come together and there is a relationship in both
directions.

e.g. Each sibling in a group of brothers and sisters have multiple brothers and sisters, 
Many fans support more than one rock band, Many books are written by more than one author.  

*As you can tell, whether you use a one-to-many relationship or many-to-many relationship 
depends on not just the concept of the table, but the context of the database.*  

**One-To-One**
---
In a *one-to-one* relationship, a separate table is created to extend the concept or 
refine the details of the original table. This separate table stores an attribute that 
otherwise would have left the original table *impure* conceptually [[Normalization](../202211210439)]. 

e.g. Product:Taxation Category, Customer:Contact Information

## References
[Relational Databases](../202211160507)

## Tags
