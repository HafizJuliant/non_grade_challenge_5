
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(20)
);


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date DATE NOT NULL,
    total_amount FLOAT
);


INSERT INTO Customers (customer_name, city)
VALUES
    ('John Doe', 'New York'),
    ('Jane Smith', 'Los Angeles'),
    ('David Johnson', 'Chicago');


INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES
    (1,'2022-01-10', 100.00),
	(1,'2022-02-15', 150.00),
	(2,'2022-03-20', 200.00),
	(3,'2022-04-25', 150.00);
	
SELECT *
FROM customers ;

SELECT *
FROM orders ;


SELECT customer_name, COUNT(order_id) AS total_orders
FROM customers 
LEFT JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.customer_name;