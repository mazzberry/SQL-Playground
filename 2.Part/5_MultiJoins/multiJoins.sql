SELECT p.name, cu.first_name, cu.last_name, c.body
FROM store.comments c
JOIN products p  ON c.product_id = p.product_id
JOIN customers cu ON c.customer_id = cu.customer_id


