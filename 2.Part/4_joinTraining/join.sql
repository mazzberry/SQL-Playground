SELECT
    oi.order_id,
    p.product_id,
    p.name,
    oi.quantity,
    p.unit_price,
    oi.unit_price AS 'purchase_price'
FROM 
order_items oi
JOIN products p ON oi .product_id = p.product_id