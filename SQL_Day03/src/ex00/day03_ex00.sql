SELECT pizza_name, price, pizzeria.name AS pizzeria_name, visit_date
FROM person_visits
         INNER JOIN pizzeria ON pizzeria.id = pizzeria_id
         INNER JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id AND price BETWEEN 800 AND 1000
         INNER JOIN person ON person.id = person_id AND person.name = 'Kate'
ORDER BY 1, 2, 3;
