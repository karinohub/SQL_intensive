SELECT p.name AS name,
       COUNT(pizzeria_id) AS count_of_orders,
       ROUND(AVG(price), 2) AS average_price,
       MAX(price) AS max_price,
       MIN(price) AS min_price
FROM person_order
JOIN menu ON menu_id = menu.id
JOIN pizzeria AS p ON p.id = pizzeria_id
GROUP BY p.name
ORDER BY 1;