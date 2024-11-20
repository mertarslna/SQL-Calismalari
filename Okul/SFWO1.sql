select customer_id, first_name, last_name,phone
from sales.customers 
where phone is not null
order by 2,3;