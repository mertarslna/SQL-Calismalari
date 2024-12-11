CREATE TABLE sales.taxes(
	tax_id INT PRIMARY KEY IDENTITY (1,1),
	state VARCHAR (50) NOT NULL UNIQUE,
	state_Tax_rate DEC (3,2),
	avg_local_tax_rate dec (3,2),
	combined_rate AS state_tax_rate+avg_local_tax_rate,
	max_local_tax_rate DEC(3,2),
	updated_at datetime
);