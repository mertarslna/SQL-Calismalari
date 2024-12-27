--sales.orders tablosunda silinen satýþ sipariþlerini denetim için deleted orders isminde ayrý bir tabloya kaydetmek üzere bir trigger oluþturalým. 
--Öncelikle deleted_orders isminde bir tablo oluþturalým, 
--deleted orders tablosu sales.orders tablosundaki tüm niteliklerini barýndýrsýn ayrýca silinme tarihini de tutmak için tarih tipinde ayrý bir nitelik de bulundursun.
--Daha sonra trigger'ý oluþturalým

--CREATE TABLE deleted_orders (
--    order_id INT,
--	customer_id INT,
--	order_status INT,
--	order_date DATE,
--	required_date DATE,
--	shipped_date DATE,
--	store_id INT,
--	staff_id INT,
--    deletion_date DATETIME DEFAULT GETDATE()
--);


CREATE TRIGGER trg_LogDeletedOrders
ON sales.orders
AFTER DELETE
AS
BEGIN
    INSERT INTO deleted_orders (
        order_id, 
        customer_id, 
        order_status, 
        order_date, 
        required_date, 
        shipped_date, 
        store_id, 
        staff_id, 
        deletion_date
    )
    SELECT 
        d.order_id, 
        d.customer_id, 
        d.order_status, 
        d.order_date, 
        d.required_date, 
        d.shipped_date, 
        d.store_id, 
        d.staff_id, 
        GETDATE() -- Silinme tarihi
    FROM DELETED d;
END;
