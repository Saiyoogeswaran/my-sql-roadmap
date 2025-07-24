CREATE database books;

USE books;

CREATE TABLE employee_data(
NAME VARCHAR(50),
email VARCHAR(40),
DOB date,
mobile_number VARCHAR(10) -- It should always be string since we are not performing any numerical operation with it.

);
INSERT INTO employee_data
VALUE ("Sai","xyz@gmail.com","2012-11-19", 123456789 );

ALTER TABLE employee_data
MODIFY mobile_number VARCHAR(20);

INSERT INTO employee_data
VALUE ("XYZ","XYZ@gmail.com","2001-10-11", 987654321 );

CREATE TABLE product_data(
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    product_category TEXT 
);
INSERT INTO product_data
VALUES(1, "Top Ramen", "Snacks");

ALTER TABLE product_data MODIFY COLUMN product_name VARCHAR(50) NOT NULL;

INSERT INTO product_data VALUES (2,NULL,"Beverages");

INSERT INTO product_data VALUES (3, NULL,'Candies'); -- The constraint defined will not allow null values inside product_data

SELECT * FROM product_data;

ALTER TABLE product_data
ADD product_famous BOOL; -- BOOL and BOOLEAN means the same

ALTER TABLE product_data
MODIFY product_famous boolean;

-- Rename a particular column name in MySQL
ALTER TABLE product_data
RENAME COLUMN product_famous TO is_customer_favourite;

ALTER TABLE product_data
ADD product_price BIGINT;

UPDATE product_data
SET is_customer_favourite = TRUE, product_price = 14
WHERE product_id = 1;
-- The boolean type is stored as 1/0 since it is tinyint(1)
-- So let use VARCHAR

ALTER TABLE product_data
MODIFY is_customer_favourite VARCHAR(30);

UPDATE product_data
SET is_customer_favourite = "True"
WHERE product_id = 1;

DELETE FROM product_data
WHERE product_id = 1;

DROP TABLE product_data;

TRUNCATE TABLE employee_data;

DROP TABLE employee_data;

DROP DATABASE books;

-- This is valid only in Microsoft SQL Server
/*ALTER TABLE product_data
ALTER COLUMN product_price INT; */