INSERT INTO sales.promotions (
	promotion_name,
	discount,
	start_date,
	expired_date
	
) OUTPUT inserted.promotion_id
VALUES (
	'2019 Summer Promotion',
	0.15,
	'20180601',
	'20180901'
),
(
	'2019 Winter Promotion',
	0.20,
	'20181201',
	'20190101'
);