WITH dates(missing_date) AS (SELECT *
                   FROM  generate_series('2022-01-01', '2022-01-10', INTERVAL '1 day')),
     visits(vz) AS (SELECT visit_date
                    FROM person_visits WHERE person_id=1 OR person_id=2)
SELECT missing_date::date
FROM dates
LEFT JOIN visits ON missing_date = vz
WHERE vz IS NULL
ORDER BY missing_date;