select product_id, name, 'cheap'
from products 
where unit_price < 30000
UNION
select product_id, name, 'Normal'
from products
where unit_price between 30000 and 100000
UNION
select product_id, name, 'Expensive'
from products 
where unit_price between 100000 and 10000000