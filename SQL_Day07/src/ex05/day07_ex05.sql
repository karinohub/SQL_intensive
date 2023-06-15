SELECT DISTINCT p.name
FROM person_order
JOIN person AS p ON p.id = person_id
ORDER BY 1;