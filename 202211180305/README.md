# MySQL Inner Join

## Example
Given a restaurant database with the following tables:
* customers  
* orders  
* items  
* order\_item - *bridge table between orders and items (many-to-many relationship)*

, return a result grid that links customer last names, 
order IDs, and the items that they ordered on July 28th, 2020.  

```mysql
/*
**Table Joining Concept**
Use common ids between the following tables in the following order:
customer --> order --> order_item --> item --> filter 
*/
select
    customer.last_name,
    `order`.order_id,
    item.name 
from customer -- start with customer table
inner join `order` on customer.customer_id = `order`.customer_id -- join the order table using *customer_id*  
inner join order_item on `order`.order_id = order_item.order_id -- join the order_item table using *order_id*
inner join item on order_item.item_id = item.item_id -- join the item table using *item_id* 
where date(order_date) = '2020-07-28'; -- filter result
```

## Tags
#db
