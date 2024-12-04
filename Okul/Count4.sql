select
	city,
	state,
	count (customer_id) [customer count]
from
	sales.customers
group by 
	state,
	city
order by
	city,
	state;
	
