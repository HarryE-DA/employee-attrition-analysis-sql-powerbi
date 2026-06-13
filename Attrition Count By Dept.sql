SELECT COUNT (*) AS total_employees, 
SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left
