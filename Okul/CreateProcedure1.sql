CREATE PROCEDURE uspProductList
AS
BEGIN -- kullanma zorunlulu�u yok
	SELECT
		product_name,
		list_price
	FROM
		production.products
	ORDER BY
		product_name
END; -- kullanma zorunlulu�u yok

EXEC uspProductList; -- bu �ekilde ��kt�s� al�n�r