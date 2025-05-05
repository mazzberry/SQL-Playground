use store;
SELECT *
FROM customers c 
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
JOIN packagings p 
ON p.packaging_id = o.packaging_id