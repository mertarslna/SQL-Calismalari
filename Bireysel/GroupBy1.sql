SELECT
	model_year,
	MIN(list_price) AS [Min Price],
	MAX(list_price) AS [Max Price],
	COUNT(list_price)  AS [Row Count],
	SUM(list_price)  AS [Total Price],
	AVG(list_price)  AS [Average Price]
FROM production.products
GROUP BY model_year

