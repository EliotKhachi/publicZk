# Natural Key

A **natural key** in a database is a key that naturally occurs in the table and that 
is unique.

## Example
|holiday|year|joy_factor|
|-----|----|----|
|Christmas|2022|0.85|
|Halloween|2022|0.7|
|Thanksgiving|2022|0.8|

In the above table, the `holiday` and `year` can be used as a natural primary key since 
a holiday only occurs once a year.  

## Problems
The problem with a natural key is that the world is a complicated place, and data 
changes. There can be an exception introduced to the table that no longer makes your 
natural key unique.

|holiday|year|joy_factor|host|
|-----|----|----|---|
|Christmas|2022|0.85|Eliot|
|Halloween|2022|0.7|Jim|
|Thanksgiving|2022|0.8|Mary|
|Thanksgiving|2022|0.6|Eliot|

If our table were tracking holiday parties and who was hosting them, then we can have 
the same holiday event hosted in the same year by a different person.  

## Tags
#db
