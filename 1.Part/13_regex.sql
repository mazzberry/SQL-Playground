SELECT * 
FROM products
-- WHERE name LIKE '%ee%'
-- WHERE name REGEXP 'e$'
 -- '^a' : aval jomle, 'e$' : char 'e' akhar jomle bashe
-- WHERE name REGEXP '^c'
-- WHERE name REGEXP '^c|^b' 
-- '^c|^v' be in manie ke : ya ba "c" shoroo shode ya ba "b"
-- WHERE name REGEXP '^[cb]'
-- '^c|^v' be in manie ke : ya ba "c" shoroo shode ya ba "b"... mesl WHERE khat 7
-- WHERE name REGEXP '[da]$'
--
WHERE name REGEXP '[a-g]$'
-- ( - ) dash be in manie ke horoofi ke dar mesal: az A ta G tavali daran yani : '[abcdefg]$'
