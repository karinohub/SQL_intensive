SELECT generated_date AS missing_date
FROM  v_generated_dates
LEFT JOIN (SELECT visit_date FROM person_visits) AS pv
    ON  visit_date = generated_date
WHERE visit_date IS NULL
ORDER BY missing_date;