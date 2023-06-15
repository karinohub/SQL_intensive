DELETE
FROM person_order
WHERE order_date BETWEEN '2022-02-16'AND '2022-02-24';

DELETE
FROM menu
WHERE pizza_name = 'greek pizza';