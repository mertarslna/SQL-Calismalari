select
	customer_id,
	year (order_date) order_year,
	order_status --referans vermeden listede görme yapılmaz hata verir
from
	sales.orders
where 
	customer_id in (1,2)
group by 
	customer_id,
	year (order_date)
order by
	customer_id;
