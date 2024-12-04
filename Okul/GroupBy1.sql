select
	customer_id,
	year (order_date) order_year
from
	sales.orders
where 
	customer_id in (1,2)
order by 
	customer_id;