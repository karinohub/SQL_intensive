WITH dont_touch AS (SELECT person.id AS per, pizzeria.id AS pizzeria_id, person_visits.visit_date
                   FROM person_visits
                       INNER JOIN pizzeria ON pizzeria.id = pizzeria_id
                       INNER JOIN menu ON person_visits.pizzeria_id = menu.pizzeria_id
                       INNER JOIN person ON person.id = person_id
                   WHERE person.name = 'Dmitriy' AND visit_date = '2022-01-08' AND price < 800),
          touch AS (SELECT pizzeria.id AS piz
                    FROM pizzeria
                    JOIN menu ON pizzeria.id = pizzeria_id
                    WHERE price < 800 AND pizzeria.id != (SELECT pizzeria_id FROM dont_touch))
INSERT INTO person_visits
    VALUES (((SELECT MAX(id) FROM person_visits) + 1),
           (SELECT per FROM dont_touch),
           (SELECT MIN(piz) FROM  touch),
           '2022-01-08');
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;