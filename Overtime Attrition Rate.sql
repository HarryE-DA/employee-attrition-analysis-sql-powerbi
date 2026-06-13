SELECT overtime, COUNT(*) AS total_employees,
SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left, 
Round(SUM(CASE WHEN attrition ='Yes' THEN 1 ELSE 0 END) *100.0 / COUNT(*),1) AS attrition_rate
FROM employee_attrition 
Group By overtime
