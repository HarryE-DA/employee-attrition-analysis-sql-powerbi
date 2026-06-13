SELECT attrition, AVG(monthlyincome) AS average_monthlyincome,
ROUND(AVG(monthlyincome),1)
FROM employee_attrition
GROUP BY attrition