SELECT *
FROM customers
-- WHERE province = "isfahan" OR province = 'tehran' OR province = 'Tabriz'
WHERE province IN ('isfahan', 'tehran', 'Tabriz')
-- -- IN = be in list