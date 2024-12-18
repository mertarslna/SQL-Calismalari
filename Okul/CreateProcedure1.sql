CREATE PROCEDURE uspProductList
AS
BEGIN -- kullanma zorunluluðu yok
	SELECT
		product_name,
		list_price
	FROM
		production.products
	ORDER BY
		product_name
END; -- kullanma zorunluluðu yok

EXEC uspProductList; -- bu þekilde çýktýsý alýnýr