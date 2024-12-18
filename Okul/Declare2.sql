DECLARE @product_count INT;

SET @product_count = (
	SELECT
		COUNT(*)
	FROM
		production.products
);