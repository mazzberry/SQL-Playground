select *
from customers c
cross join orders o;
-- where o.customer_id = c.customer_id
-- ba code comment shode bala mitavan inner join anjam dad

-- cross join : be ezaye har record ya row be tedad ro haye table dovom record tekrar
-- mishavad

-- dar in mesal ma 5 adad customer darim va 10 product ke dar in cross mishavad 
-- 50 record ke be ma bar migardanad va shabie be zarb ast

-- be shekl payin ham mitavan cross join anjam dad

select * 
from customers c, orders o
