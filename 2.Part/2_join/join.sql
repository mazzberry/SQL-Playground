USE store;
-- SELECT *
-- FROM orders
-- join customers ON orders.customer_id = customers.customer_id

SELECT o.order_id, c.first_name, c.last_name, o.customer_id
FROM orders o
join customers c ON o.customer_id = c.customer_id
-- we used alias with a char infront of table names and related to other columns
