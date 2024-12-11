INSERT INTO sales.promotions (
	promotion_name,
	discount,
	start_date,
	expired_date
	
) OUTPUT inserted.promotion_id,inserted.promotion_name -- OUTPUT ve inserted anahtar kelimedir
VALUES (
	'2018 Summer Promotion',
	0.15,
	'20180601',
	'20180901'
);