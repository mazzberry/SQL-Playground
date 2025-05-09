use store;
SELECT
	o.order_id,
    c.first_name,
    c.last_name
FROM orders o 
JOIN customers c
USING (customer_id)
    -- ON o.customer_id = c.customer_id
ORDER BY o.order_id

-- be jaye ON oi.product_id = p.product_id , zamanni ke
-- product_id dar do table mojood bashad, be jaye inke
-- ON bzanid, mitavanid az USING estefade konid
--