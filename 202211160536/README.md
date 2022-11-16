# Database Relationships

**One-To-Many**
---
A row in one table is related to zero or more rows in another table; the
relation flows in one direction.

e.g. Hunter:Animals, Rock Band:Fans, Author:Books

**Many-To-Many**
---
Two or more concepts come together and there is a relationship in both
directions.

e.g. Brothers:Sisters, Doctors:Patients

**One-To-One**
---
Usually a concept extension or refinement of details for a record in another
table. Could be used to break down a very large conceptual record into 2 or
more records in different tables. Useful for avoiding tables that try to track
hundreds of attributes, which would be bad code otherwise.

e.g. Product:Taxation Category, Customer:Login

## Tags
