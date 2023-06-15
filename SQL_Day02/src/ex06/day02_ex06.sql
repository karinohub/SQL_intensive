SELECT pizza_name, pizzeria.name AS pizzeria_name
FROM menu
INNER JOIN pizzeria ON pizzeria.id = pizzeria_id
INNER JOIN person_order ON menu.id = menu_id
INNER JOIN person ON person.id = person_id
WHERE person.name = 'Denis' OR person.name = 'Anna'
ORDER BY pizza_name, pizzeria_name;