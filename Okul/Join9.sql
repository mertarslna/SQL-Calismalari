select
	c1.city,
	c1.first_name + ' ' + c1.last_name customer_1,
	c2.first_name + ' ' + c2.last_name customer_2
from
	sales.customers c1
inner join sales.customers c2 on c1.customer_id > c2.customer_id and c1.city=c2.city
order by
	city,
	customer_1,
	customer_2;