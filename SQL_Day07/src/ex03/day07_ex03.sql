WITH
    total AS (SELECT p.name AS name
               FROM person_visits
                   JOIN pizzeria AS p ON pizzeria_id = p.id
               UNION ALL
               SELECT p.name AS name
               FROM person_order
                   JOIN menu ON menu_id = menu.id
                   JOIN pizzeria AS p ON pizzeria_id = p.id)

SELECT name, COUNT(name) AS total_count FROM total
GROUP BY name
ORDER BY 2 DESC, 1;