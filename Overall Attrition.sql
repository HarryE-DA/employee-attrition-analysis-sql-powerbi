SELECT COUNT (*) AS total_employees, 
SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND (SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / count(*),1) AS attrition_rate
FROM employee_attrition;