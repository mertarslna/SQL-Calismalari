--�r�nler belirli bir ma�azada sat�ld���nda 
--veya iade edildi�inde ilgili �r�nlerin ilgili ma�azadaki stok miktar�n� otomatik olarak g�ncelleyen bir�trigger�yazal�m

CREATE TRIGGER trg_UpdateStock
ON sales.order_items
AFTER INSERT, DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM INSERTED)
    BEGIN
        UPDATE production.stocks
        SET quantity = s.quantity - i.quantity
        FROM production.stocks s
        INNER JOIN INSERTED i ON s.product_id = i.product_id
        INNER JOIN sales.orders o ON i.order_id = o.order_id
        WHERE s.store_id = o.store_id
			AND i.quantity IS NOT NULL;
    END;

    IF EXISTS (SELECT 1 FROM DELETED)
    BEGIN
        UPDATE production.stocks
        SET quantity = s.quantity + d.quantity
        FROM production.stocks s
        INNER JOIN DELETED d ON s.product_id = d.product_id
        INNER JOIN sales.orders o ON d.order_id = o.order_id
        WHERE s.store_id = o.store_id
			AND D.quantity IS NOT NULL;
    END;
END;

