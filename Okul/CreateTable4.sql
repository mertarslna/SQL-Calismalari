CREATE TABLE production.product_audits( 
	change_id INT IDENTITY PRIMARY KEY, 
	product_id INT NOT NULL, 
	product_name VARCHAR(255) NOT NULL, 
	brand_id INT NOT NULL,
	category_id INT NOT NULL, 
	model_year SMALLINT NOT NULL, 
	list_price DEC(10,2) NOT NULL,
	updated_at DATETIME NOT NULL,
	operation CHAR(3) NOT NULL, 
	CHECK(operation = 'INS' or operation='DEL')
);