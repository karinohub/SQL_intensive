WITH tbl AS (SELECT * FROM person_order
         JOIN menu ON menu_id = menu.id
         JOIN person ON person.id = person_id
         WHERE gender = 'female' )
SELECT name FROM tbl WHERE pizza_name = 'pepperoni pizza'
INTERSECT
SELECT name FROM tbl WHERE pizza_name = 'cheese pizza'
ORDER BY name;