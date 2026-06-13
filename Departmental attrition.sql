SELECT department, COUNT (attrition) AS employee_count
FROM employee_attrition
WHERE attrition = 'Yes'
GROUP BY department
ORDER BY employee_count DESC;