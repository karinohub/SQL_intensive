SELECT per1.name AS person_name1, per2.name AS person_name2, per1.address AS common_address
FROM person AS per1
INNER JOIN person AS per2 ON per1.address = per2.address
WHERE per1.id > per2.id
ORDER BY 1, 2, 3