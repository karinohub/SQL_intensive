WITH piz_tbl AS (SELECT pizza_name, pizzeria.name, price
                   FROM pizzeria, menu
                   WHERE pizzeria_id = pizzeria.id )
SELECT piz_tbl.pizza_name AS pizza_name,
       piz_tbl.name AS pizzeria_name_1,
       piz2_tbl.name AS pizzeria_name_2,
       piz_tbl.price AS price
FROM piz_tbl
JOIN piz_tbl AS piz2_tbl  ON piz_tbl.pizza_name = piz2_tbl.pizza_name AND piz_tbl.price = piz2_tbl.price
         WHERE piz2_tbl.name > piz_tbl.name
ORDER BY 1;