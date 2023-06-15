SET enable_seqscan =off;
EXPLAIN ANALYZE
SELECT pizza_name, name AS pizzeria_name
FROM menu
JOIN pizzeria ON pizzeria_id = pizzeria.id;
