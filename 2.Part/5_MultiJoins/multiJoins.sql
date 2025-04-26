SELECT *
FROM store.comments cm
JOIN customers c ON c.customer_id = cm.customer_id
JOIN orders o ON o.order_id = cm.product_id