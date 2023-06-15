SELECT COALESCE (person.name, '-' ) AS person_name, visit_date, COALESCE (pn.name, '-' ) AS pizzeria_name
FROM person
FULL JOIN (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS vd
    ON  person.id = vd.person_id
FULL JOIN (SELECT * FROM pizzeria ) AS pn
    ON  pizzeria_id = pn.id
ORDER BY person_name, visit_date, pizzeria_name