SELECT 
	c.comment_id,
	c.product_id,
    cu.first_name,
    cu.last_name,
	c.body AS body,
    p.body AS parent_body
FROM comments c
LEFT JOIN comments p
	ON c.parent = p.comment_id
JOIN customers cu
	ON c.customer_id = cu.customer_id
LEFT JOIN customers p_cu
	ON p.customer_id = p_cu.customer_id