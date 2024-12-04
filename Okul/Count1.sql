select
	customer_id,
	year (order_date) order_year,
	count (order_id) order_placed
from
	sales.orders
where 
	customer_id in (1,2)
group by 
	customer_id,
	year (order_date)
order by
	customer_id;
