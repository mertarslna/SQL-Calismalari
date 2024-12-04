SELECT
	order_id,
	order_date,
	(
		SELECT
			MAX (list_price)
		FROM
			sales.order_items i
		WHERE
			i.order_id = o.order_id
	) AS max_list_price
FROM
	sales.orders o
ORDER BY 
	order_date DESC;