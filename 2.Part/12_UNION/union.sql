(SELECT order_id, customer_id, 'done' as status
FROM orders o 
where packaging_id is not null)
UNION -- 
(
SELECT order_id, customer_id, 'In Progress' as status
FROM orders o 
where packaging_id is null)

-- etelaat 2 query ra be ham peyvast midahad