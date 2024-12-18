DECLARE @sales INT;

SELECT
	@sales = SUM(list_price * quantity)
FROM
	sales.order_items i
	INNER JOIN sales.orders o ON o.order_id = i.order_id
WHERE
	YEAR(order_date) = 2018

SELECT @sales;

IF @sales > 1000000
BEGIN
	PRINT 'MERT ARSLAN';
END