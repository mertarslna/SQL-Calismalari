UPDATE sales.taxes
SET max_local_tax_rate += 0.02,
	avg_local_tax_rate += 0.01
WHERE
	max_local_tax_rate = 0.01;