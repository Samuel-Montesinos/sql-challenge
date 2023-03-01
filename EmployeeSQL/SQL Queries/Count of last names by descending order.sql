SELECT count(*) as "Frequency of Last Name", last_name
FROM employees
GROUP BY last_name
ORDER BY count(*) DESC
