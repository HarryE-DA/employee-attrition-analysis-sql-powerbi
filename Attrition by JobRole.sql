SELECT jobrole, Count(*) As total_employees,
SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) *100.0 /COUNT (*),1) AS attrition_rate
FROM employee_attrition 
GROUP BY jobrole
ORDER BY attrition_rate DESC;