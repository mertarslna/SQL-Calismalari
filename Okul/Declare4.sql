--Aþaðýdakiler için cursor kullanarak bir saklý yordam yazýn:
--1. sales.stores tablosundaki tüm store id deðerlerini bir cursor ile while döngüsünde dolaþýn. 
--2. Her maðaza için toplam satýþ gelirini hesaplayýn. 
--3. store_sales tablosuna hesaplanan total_sales deðerini ekleyin (store_id yoksa eklenecek) veya güncelleyin (store id daha önce eklenmiþse yeni hesaplanan deðer ile güncelenecek).

CREATE PROCEDURE CalculateTotalSales
AS
BEGIN
    DECLARE @store_id INT;
    DECLARE @total_sales DECIMAL(18, 2);

    DECLARE store_cursor CURSOR FOR
    SELECT store_id FROM sales.stores;

    OPEN store_cursor;

    FETCH NEXT FROM store_cursor INTO @store_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SELECT @total_sales = SUM(oi.quantity * oi.list_price)
        FROM sales.order_items oi
		JOIN sales.orders o ON oi.order_id = o.order_id
        WHERE o.store_id = @store_id;

        IF EXISTS (SELECT 1 FROM store_sales WHERE store_id = @store_id)
        BEGIN
            UPDATE store_sales
            SET total_sales = @total_sales
            WHERE store_id = @store_id;
        END
        ELSE
        BEGIN
            INSERT INTO store_sales (store_id, total_sales)
            VALUES (@store_id, @total_sales);
        END;

        FETCH NEXT FROM store_cursor INTO @store_id;
    END;

    CLOSE store_cursor;
    DEALLOCATE store_cursor;
END
