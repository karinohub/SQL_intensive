SELECT address,
       ROUND(MAX(age)*1.0 - (MIN(age)*1.0/ MAX(age)),2) AS formula,
       ROUND(AVG(age), 2) AS average,
       ROUND(MAX(age)*1.0 - (MIN(age)*1.0/ MAX(age)), 2) > ROUND(AVG(age), 2) AS comparison
FROM person
GROUP BY address
ORDER BY 1;