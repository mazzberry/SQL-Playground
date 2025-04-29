SELECT 
    p.name,
    c.body,
    p.product_id
FROM comments c
JOIN products p ON c.product_id = p.product_id
