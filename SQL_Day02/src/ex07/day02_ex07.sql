SELECT pizzeria.name
FROM person_visits
         INNER JOIN pizzeria ON pizzeria.id = pizzeria_id
         INNER JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
         INNER JOIN person ON person.id = person_id
WHERE person.name = 'Dmitriy' AND visit_date = '2022-01-08' AND price < 800
