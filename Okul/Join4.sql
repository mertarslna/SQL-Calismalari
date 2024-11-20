select
	product_name,
	order_id
from
	production.products p
left join sales.order_items o 
	on o.product_id= p.product_id --and order_id = 100
--where order_id = 100
order by
	order_id desc;