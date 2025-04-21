SELECT *
FROM customers
WHERE
    date_of_birth > '2000-01-01' AND
    province != 'isfahan'