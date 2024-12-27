CREATE TRIGGER production.trg_product_audit 
ON production.products 
AFTER INSERT, DELETE 
AS 
BEGIN 
	SET NOCOUNT ON; 
	INSERT INTO production.product_audits( 
		product_id,
		product_name, 
		brand_id, 
		category_id, 
		model_year, 
		list_price,
		updated_at,
		operation 
	)
	SELECT
		i.product_id, 
		product_name, 
		brand_id,
		category_id,
		model_year,
		i.list_price,
		GETDATE(),
		'INS'
	FROM
		inserted i
	UNION ALL
	SELECT
		d.product_id,
		product_name,
		brand_id,
		category_id,
		model_year,
		d.list_price,
		GETDATE(),
		'DEL'
	FROM
		deleted d;
END
