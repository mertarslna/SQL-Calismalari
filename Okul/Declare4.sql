--A�a��dakiler i�in cursor kullanarak bir sakl� yordam yaz�n:
--1. sales.stores tablosundaki t�m store id de�erlerini bir cursor ile while d�ng�s�nde dola��n. 
--2. Her ma�aza i�in toplam sat�� gelirini hesaplay�n. 
--3. store_sales tablosuna hesaplanan total_sales de�erini ekleyin (store_id yoksa eklenecek) veya g�ncelleyin (store id daha �nce eklenmi�se yeni hesaplanan de�er ile�g�ncelenecek).

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
