SELECT attrition, ROUND(AVG(yearsatcompany),1) AS avg_years_at_company
FROM employee_attrition
GROUP BY attrition