select 
	product_name,
	category_name,
	list_price
from
	production.products p
inner join production.categories c
	on c.category_id = p.category_id
order by
	product_name desc;