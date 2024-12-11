SELECT
	customer_id,
	first_name,
	last_name
FROM
	sales.customers
WHERE
	EXISTS (SELECT NULL)
ORDER BY
	first_name,
	last_name;

		