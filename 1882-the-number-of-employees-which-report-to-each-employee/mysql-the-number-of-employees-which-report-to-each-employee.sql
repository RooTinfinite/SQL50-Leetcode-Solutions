SELECT
    Manager.employee_id
    ,Manager.name
    ,Count(e.reports_to) reports_count
    ,ROUND(AVG(e.age*1.0),0) Average_age
FROM Employees Manager
JOIN Employees E
    ON e.reports_to = manager.employee_id
GROUP BY Manager.employee_id, Manager.name
ORDER BY Manager.employee_id