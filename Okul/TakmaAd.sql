select c.customer_id, first_name, last_name, order_id
from sales.customers c -- = sales.customers as c
inner join sales.orders o on o.customer_id = c.customer_id;