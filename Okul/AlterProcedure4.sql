ALTER PROCEDURE uspFindProduct(
	@min_list_price as decimal = 0,
	@max_list_price as decimal = 999999,
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

EXECUTE uspFindProduct @name = 'Trek';
