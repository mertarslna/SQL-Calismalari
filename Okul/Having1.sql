SELECT
	category_id,
	max (list_price) [max list price],
	min (list_price) [min list price]
FROM
	production.products
GROUP BY
	category_id
HAVING
	max (list_price) > 4000 or min (list_price) < 500;