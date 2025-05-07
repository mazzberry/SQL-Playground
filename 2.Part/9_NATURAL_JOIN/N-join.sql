USE store;

SELECT o.order_id, c.first_name
FROM orders o
natural JOIN customers c


-- natural join : darvaghe ma amal (JOIN va ON) ro misparim be DB  (in khoob nist)