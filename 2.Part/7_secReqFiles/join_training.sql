use store;
SELECT c.customer_id, o.order_id, p.name
FROM customers c 
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
LEFT JOIN packagings p 
ON p.packaging_id = o.packaging_id