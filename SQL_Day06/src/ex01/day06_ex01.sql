WITH count_orders AS (
SELECT person_id, pizzeria_id, COUNT(person_id) as count
                      FROM person_order
                      JOIN menu ON menu.id = menu_id
GROUP BY person_id, pizzeria_id
ORDER BY person_id, pizzeria_id)

INSERT INTO person_discounts
       SELECT ROW_NUMBER() OVER() AS id,
        person_id,
        pizzeria_id,
        (CASE
           WHEN count = 0  THEN 0
           WHEN count = 1  THEN 10.5
           WHEN count = 2  THEN 22
           ELSE 30
           END) as discounts
       FROM count_orders
