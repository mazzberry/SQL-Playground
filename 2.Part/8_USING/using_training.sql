USE store;

SELECT *
FROM comments c
LEFT JOIN products p
USING (product_id)
LEFT JOIN customers cu
USING (customer_id)
