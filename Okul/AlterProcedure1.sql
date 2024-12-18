ALTER PROCEDURE uspFindProduct(@min_list_price as decimal) -- parametre @ ile baþlamalý
AS
BEGIN
	SELECT
		product_name,
		list_price
	FROM
		production.products
	WHERE
		list_price >= @min_list_price
	ORDER BY
		list_price;
END;

EXEC uspFindProduct 100; 