CREATE VIEW v_price_with_discount AS
SELECT person.name, pizza_name, price, ROUND(price*0.9, 0) AS discount_price
                   FROM person_order, pizzeria, person, menu
                   WHERE person.id = person_id
                     AND menu.id = menu_id
                     AND pizzeria_id = pizzeria.id
ORDER BY 1, 2;