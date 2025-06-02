CREATE TABLE customer (
   customer_id serial PRIMARY KEY,
   first_name character varying(100) NOT NULL,
   last_name character varying(100) NOT NULL
);

INSERT INTO customer (first_name, last_name) VALUES
  ('John', 'Doe'),
  ('Alice', 'Smith'),
  ('Bob', 'Johnson'),
  ('Emma', 'Brown'),
  ('Michael', 'Lee');

  select * from customer;

  DELETE FROM customer
WHERE customer_id =5;

SELECT
	first_name,
	last_name
FROM
	customer
ORDER BY
	first_name ASC;
	
SELECT
       first_name,
       last_name
FROM
       customer
ORDER BY
       last_name DESC;

	   SELECT
	last_name,
	first_name
FROM
	customer
WHERE
	first_name = 'Bob';

SELECT
	first_name,
    last_name
FROM
	customer
WHERE
	first_name LIKE '%EN%';

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES customer(customer_id),
    order_date timestamp with time zone NOT NULL DEFAULT now(),
    order_number CHARACTER VARYING(50) NOT NULL,
    order_amount DECIMAL(10,2) NOT NULL
);
drop table orders

INSERT INTO orders (customer_id, order_date, order_number, order_amount) VALUES
  (1, '2024-01-01', 'ORD001', 50.00),
  (2, '2024-01-01', 'ORD002', 35.75),
  (3, '2024-01-01', 'ORD003', 100.00),
  (4, '2024-01-01', 'ORD004', 30.25);
  select * from orders

  
SELECT * FROM orders as o
INNER JOIN customer as c
ON o.customer_id = c.customer_id

select * FROM customer as c
LEFT JOIN orders as o
ON c.customer_id = o.customer_id

SELECT
    customer_id,
	first_name,
	last_name
FROM
	customer
WHERE
	EXISTS (
		SELECT
			1
		FROM
			orders
		WHERE
			orders.customer_id = customer.customer_id
	);

SELECT
	c.customer_id,
	c.first_name,
	c.last_name,
	COUNT (o.order_id) AS "No_Orders",
	SUM(o.order_amount) AS "Total"
FROM customer as c
INNER JOIN orders as o
	ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT (o.order_id) > 1

