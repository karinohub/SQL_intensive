SELECT order_date, CONCAT (person.name, ' (age:', person.age, ')') AS person_information
FROM person
NATURAL JOIN (SELECT order_date, person_id AS id FROM person_order) AS pp
ORDER BY order_date, person_information;