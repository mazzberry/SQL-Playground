

SELECT name, unit_price - unit_price_after_discount AS differ
FROM products
where unit_price_after_discount - unit_price < 0 
