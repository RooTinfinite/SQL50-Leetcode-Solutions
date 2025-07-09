SELECT 
    p.project_id
    ,COALESCE(ROUND(AVG(E.experience_years), 2), 0) AS average_years
FROM Project P
LEFT JOIN Employee E ON p.employee_id = e.employee_id
GROUP BY p.project_id