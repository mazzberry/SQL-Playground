SELECT *
FROM store.comments c
JOIN products p  ON c.product_id = p.product_id
JOIN customers cu ON c.customer_id = cu.customer_id


