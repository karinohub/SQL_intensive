INSERT INTO person_order
SELECT generate_series(((SELECT MAX(id) FROM person_order) + 1),
                        (SELECT MAX(id) FROM person_order) + (SELECT  MAX(id) FROM person)),
       generate_series((SELECT MIN(id) FROM person), (SELECT MAX(id) FROM person)),
        (SELECT menu.id FROM menu WHERE pizza_name = 'greek pizza'),
        generate_series('2022-02-16', '2022-02-24', INTERVAL '1 day');