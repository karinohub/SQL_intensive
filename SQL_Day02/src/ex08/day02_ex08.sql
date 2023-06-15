SELECT person.name
FROM person_order
         INNER JOIN menu ON menu_id = menu.id
         INNER JOIN person ON person.id = person_id
WHERE gender = 'male'
      AND ( pizza_name = 'pepperoni pizza' OR pizza_name = 'mushroom pizza')
      AND (address = 'Moscow' OR address = 'Samara')
ORDER BY person.name DESC;