SELECT
	order_id,
	order_date,
	customer_id
FROM
	sales.orders
WHERE
	customer_id in (
		SELECT
			customer_id
		FROM
			sales.customers
		WHERE
			city = 'New York'
	)
ORDER BY 
	order_date desc;