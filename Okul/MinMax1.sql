select
	brand_name,
	min (list_price) [min price],
	max (list_price) [max price]
from
	production.products p
inner join production.brands b on b.brand_id = p.brand_id
where
	model_year = 2018
group by
	brand_name
order by
	brand_name;
	
