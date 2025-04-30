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


SELECT 
    cu.customer_id,
    cu.first_name,
    cu.last_name,
    co.body
FROM customers cu 
LEFT JOIN comments co ON cu.customer_id = co.customer_id