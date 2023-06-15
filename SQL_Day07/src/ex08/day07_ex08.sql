SELECT address,
       p.name AS name,
       COUNT(pizzeria_id) AS count_of_orders
FROM person_order
JOIN menu ON menu_id = menu.id
JOIN pizzeria AS p ON p.id = pizzeria_id
JOIN person ON person.id = person_id
GROUP BY address, p.name
ORDER BY 1;