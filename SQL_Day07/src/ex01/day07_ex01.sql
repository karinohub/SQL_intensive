SELECT p.name AS name, COUNT(person_id) as count_of_visits
FROM person_visits
JOIN person AS p ON person_id = p.id
GROUP BY name
ORDER BY 2 DESC, 1
LIMIT 4;
