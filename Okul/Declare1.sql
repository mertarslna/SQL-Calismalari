DECLARE @model_year SMALLINT, -- Deðiþken oluþturma
	@product_name VARCHAR(MAX);
SET @model_year = 2018

SELECT
	product_name,
	model_year,
	list_price
FROM
	production.products
WHERE
	model_year = @model_year
ORDER BY
	 product_name;
