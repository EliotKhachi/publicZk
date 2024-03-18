# Many-to-Many Relationship

A many-to-many relationship in an SQL-based database is used to map many objects of one type, to many objects of another type. 

## Example 
Let's say you are configuring users and roles for the security of an application. Usually, a user can have many roles, and a role can be attributed to many users. To create this relationship, you will need, 3 tables:  

```sql
-- Table to store information about users 
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Table to store information about roles
CREATE TABLE roles(
    role_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Junction table to represent the many-to-many relationship
CREATE TABLE users_roles (
    user_id INT,
    role_id INT,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

```
The **books** table stores information about each book, with a unique `book_id` as the primary key.  
The **authors** table stores information about each author, with a unique `author_id` as the primary key.  
The **book_authors** table is the junction table that links books to authors. It contains foreign keys (`book_id` and `author_id`) referencing the primary keys of the books and authors tables, respectively. The combination of these foreign keys forms the primary key of the junction table.  

## Tags
