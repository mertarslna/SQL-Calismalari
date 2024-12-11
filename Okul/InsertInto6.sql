INSERT INTO sales.addresses (street, city, state, zip_code)
SELECT 
	street,
	city,
	state,
	zip_code
FROM 
	sales.customers
ORDER BY
	first_name,
	last_name;
