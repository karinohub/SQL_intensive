SELECT p.name, COUNT(person_id) AS counts_of_visits
FROM person_visits
JOIN person AS p ON person_id = p.id
GROUP BY name
HAVING COUNT(person_id) > 3;