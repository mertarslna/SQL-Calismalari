ALTER PROCEDURE uspFindProduct(
	@min_list_price as decimal,
	@max_list_price as decimal
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
		list_price <= @max_list_price
	ORDER BY
		list_price
END;

EXECUTE uspFindProduct 100,200; 

EXECUTE uspFindProduct 
	@min_list_price = 100,
	@max_list_price = 200;