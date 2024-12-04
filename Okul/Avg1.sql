select
	brand_name,
	avg (list_price) avg_price
from
	production.products p
inner join production.brands b on b.brand_id = p.brand_id
where
	model_year = 2018
group by
	brand_name
order by
	brand_name;
	
