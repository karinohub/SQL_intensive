WITH tbl1 AS (SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name
              FROM menu,
                   pizzeria
              WHERE pizzeria.id = menu.pizzeria_id),
     tbl2 AS (SELECT menu.pizza_name, menu.price, pizzeria.name AS pizzeria_name
              FROM menu,
                   pizzeria,
                   person_order
              WHERE menu.id = person_order.menu_id
                AND menu.pizzeria_id = pizzeria.id)
SELECT *
FROM tbl1
EXCEPT
SELECT *
FROM tbl2
ORDER BY 1, 2;