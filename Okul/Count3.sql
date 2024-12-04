select
	city,
	count (customer_id) customer_count
from
	sales.customers
group by 
	city
order by
	city;
