SELECT
	product_name,
	list_price
FROM
	production.products
WHERE
	list_price >= ANY (
		SELECT
			AVG (list_price)
		FROM
			production.products
		GROUP BY
			brand_id
	)
