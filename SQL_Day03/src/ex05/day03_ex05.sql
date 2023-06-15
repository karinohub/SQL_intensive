WITH visits(pizzeria_name) AS (
        SELECT DISTINCT pizzeria.name
        FROM pizzeria
        JOIN person_visits ON pizzeria_id = pizzeria.id
        JOIN person ON person.id = person_id
        WHERE person.name = 'Andrey'
    ),
    orders(pizzeria_name) AS (
        SELECT DISTINCT pizzeria.name
        FROM pizzeria
        JOIN menu ON menu.pizzeria_id = pizzeria.id
        JOIN person_order ON menu_id = menu.id
        JOIN person ON person.id = person_id
        WHERE person.name = 'Andrey'
    )
SELECT *
FROM visits
EXCEPT
SELECT *
FROM orders;
