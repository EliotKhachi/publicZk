# Natural Key

A **natural key** is a key that uses meaningful attributes from a table.  

## Example
|holiday|year|joy_factor|
|-----|----|----|
|Christmas|2022|0.85|
|Halloween|2022|0.7|
|Thanksgiving|2022|0.8|

In the above table, the `holiday` and `year` can be used as a natural key since 
a holiday only occurs once a year; so, uniqueness is maintained. 

---

The problem with a natural key is that the world is a complicated place.  
There can be an exception introduced to the table that no longer makes your 
natural key unique.

If our table were tracking holiday parties and their host, then we can have 
records of the same holiday events in the same year by different people.  

|holiday|year|joy_factor|host|
|-----|----|----|---|
|Christmas|2022|0.85|Eliot|
|Halloween|2022|0.7|Jim|
|Thanksgiving|2022|0.8|Mary|
|Thanksgiving|2022|0.6|Eliot|

---

For this reason, it's often best to add another column to act as the primary key:  

|id|holiday|year|joy_factor|host|
|-|-----|----|----|---|
|1|Christmas|2022|0.85|Eliot|
|2|Halloween|2022|0.7|Jim|
|3|Thanksgiving|2022|0.8|Mary|
|4|Thanksgiving|2022|0.6|Eliot|

## Tags
#db
