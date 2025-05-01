use store;
SELECT *
FROM customers c
JOIN orders o on c.customer_id = o.customer_id 

