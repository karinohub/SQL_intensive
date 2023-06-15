WITH
    visits AS (SELECT p.name AS name, COUNT(pizzeria_id) as count, 'visit' AS action_type
               FROM person_visits
                   JOIN pizzeria AS p ON pizzeria_id = p.id
               GROUP BY p.name
               ORDER BY 3, 2 DESC
               LIMIT 3),
    orders AS (SELECT p.name AS name, COUNT(pizzeria_id) as count, 'order' AS action_type
               FROM person_order
                   JOIN menu ON menu_id = menu.id
                   JOIN pizzeria AS p ON pizzeria_id = p.id
               GROUP BY p.name
               ORDER BY 3, 2 DESC
               LIMIT 3)

SELECT * FROM orders
UNION ALL
SELECT * FROM visits;