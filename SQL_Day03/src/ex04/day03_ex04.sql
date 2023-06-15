WITH women_tbl AS (SELECT pizzeria.name AS pizzeria_name
                   FROM person_order, pizzeria, person, menu
                   WHERE person.id = person_id AND menu.id = menu_id AND pizzeria_id = pizzeria.id AND gender = 'female'),
      men_tbl AS (SELECT pizzeria.name AS pizzeria_name
                   FROM person_order, pizzeria, person, menu
                   WHERE person.id = person_id AND menu.id = menu_id AND pizzeria_id = pizzeria.id AND gender = 'male'),
      only_women AS (SELECT * FROM women_tbl EXCEPT SELECT * FROM men_tbl ),
      only_men AS (SELECT * FROM men_tbl EXCEPT SELECT * FROM women_tbl )
SELECT * FROM only_men
UNION
SELECT * FROM only_women
ORDER BY 1;