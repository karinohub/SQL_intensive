WITH women_tbl AS (SELECT pizzeria.name AS pizzeria_name
                   FROM person_visits, pizzeria, person
                   WHERE person.id = person_id AND pizzeria.id = pizzeria_id AND gender = 'female'),
      men_tbl AS (SELECT pizzeria.name AS pizzeria_name
                   FROM person_visits, pizzeria, person
                   WHERE person.id = person_id AND pizzeria.id = pizzeria_id AND gender = 'male'),
      only_women AS (SELECT * FROM women_tbl EXCEPT ALL SELECT * FROM men_tbl ),
      only_men AS (SELECT * FROM men_tbl EXCEPT ALL SELECT * FROM women_tbl )
SELECT * FROM only_women
UNION ALL
SELECT * FROM only_men
ORDER BY 1;
