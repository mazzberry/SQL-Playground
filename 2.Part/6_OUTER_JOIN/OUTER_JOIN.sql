SELECT 
    p.name,
    c.body,
    p.product_id
FROM comments c
RIGHT JOIN products p ON c.product_id = p.product_id
ORDER BY p.product_id 

SELECT 
    p.name,
    c.body,
    p.product_id
FROM products p
LEFT JOIN comments c ON c.product_id = p.product_id
ORDER BY p.product_id 


-- i wanna see everything in the table even if there is no comment for the product.