select
	order_id,
	sum (
		quantity * list_price * (1- discount)
	) net_value
from
	sales.order_items
group by 
	order_id;
