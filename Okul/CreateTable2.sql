CREATE TABLE sales.addresses (
	address_id INT IDENTITY PRIMARY KEY,
	street VARCHAR(255) NOT NULL,
	city VARCHAR(50),
	state VARCHAR(25),
	zip_code VARCHAR(5)
);