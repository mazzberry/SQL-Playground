-- / and / 

-- SELECT *
-- FROM customers
-- WHERE
--     date_of_birth > '2000-01-01' AND
--     province != 'isfahan'

-- -- / and /
-- SELECT * FROM customers
-- WHERE province != 'isfahan' AND
-- date_of_birth < '2000-01-01'

SELECT * FROM customers
WHERE province = 'isfahan' OR date_of_birth < '2000-01-01' AND
first_name =  'Ali'


-- sql aval AND ha ro mohasebe mikone bad OR ha ro
-- agar olaviat digari darim bayad az () parantes estefade konim