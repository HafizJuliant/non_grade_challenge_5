BEGIN;

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    customer_id int,
	customer_name VARCHAR(50),
    city VARCHAR(20)
);

INSERT INTO customers (customer_name, city)
VALUES
      ('John Doe', 'New York'),
      ('Jane Smith', 'Los Angeles'),
      ('David Johnson', 'Chicago');
	  
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	order_id int,
	customer_id int,
	order_date DATE,
	total_amount FLOAT	
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
	(1, 1,'2022-01-10', 100.00),
	(2, 1,'2022-02-15', 150.00),
	(3, 2,'2022-03-20', 200.00),
	(4, 3,'2022-04-25', 150.00);

SELECT *
FROM customers ;


SELECT *
FROM orders ;

COMMIT