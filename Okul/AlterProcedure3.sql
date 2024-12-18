ALTER PROCEDURE uspFindProduct(
	@min_list_price as decimal,
	@max_list_price as decimal,
	@name as VARCHAR(max)
) -- parametre @ ile baþlamalý
AS
BEGIN
	SELECT
		product_name,
		list_price
	FROM
		production.products
	WHERE
		list_price >= @min_list_price AND
		list_price <= @max_list_price AND
		product_name LIKE '%' + @name + '%'
	ORDER BY
		list_price
END;

EXECUTE uspFindProduct 
	@min_list_price = 100,
	@max_list_price = 200,
	@name = 'Trek';
