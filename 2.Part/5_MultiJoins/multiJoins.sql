USE store;
SELECT p.name, cu.first_name, cu.last_name, c.body
FROM store.comments c
JOIN products p  ON c.product_id = p.product_id
JOIN customers cu ON c.customer_id = cu.customer_id;


--
SELECT 
    oi.order_id,
    name,
    oi.quantity,
    p.unit_price,
    oi.unit_price AS p_unit_price
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN products p ON oi.product_id = p.product_id
ORDER BY order_id DESC