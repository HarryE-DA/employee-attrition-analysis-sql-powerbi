SELECT CASE WHEN yearsatcompany <=2 THEN '0-2Years'
WHEN yearsatcompany <=5 THEN '3-5 Years'
WHEN yearsatcompany <=10 THEN '6-10 Years' ELSE '10+ Years'END AS tenure_group, 
COUNT(*) AS total_employees,
SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END)*100.0/ COUNT(*),1) AS attrition_rate
FROM employee_attrition
GROUP BY CASE WHEN yearsatcompany <=2 THEN '0-2Years'
WHEN yearsatcompany <=5 THEN '3-5 Years'
WHEN yearsatcompany <=10 THEN '6-10 Years' ELSE '10+ Years'END
ORDER BY attrition_rate DESC;