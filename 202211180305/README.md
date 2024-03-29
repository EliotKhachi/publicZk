# MySQL Inner Join 

## Example
Given a CAD software / PLM database with the following tables:
* engineer 
* assembly 
* component
* assembly\_component - *bridge table between assemblies and components (many-to-many relationship)*

, return a result grid that links engineer's last names, their responsible 
assembly drawing numbers, and the components in those assemblies that are machined parts.

```mysql
/*
**Table Joining Concept**
Use common ids between the following tables in the following assembly:
engineer --> assembly --> assembly_component --> component --> filter 
*/
select
    engineer.last_name,
    assembly.assembly_id,
    component.name 
from engineer -- start with engineer table
inner join assembly on engineer.engineer_id = assembly.engineer_id -- join the assembly table using *engineer_id*  
inner join assembly_component on assembly.assembly_id = assembly_component.assembly_id -- join the assembly_item table using *assembly_id*
inner join component on assembly_component.component_id = assembly.component_id -- join the item table using *component_id* 
where component.component_type = 'Conventionally Machined'; -- filter result
```

## Tags
#db
