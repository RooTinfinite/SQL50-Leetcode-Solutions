-- TODO: PostgreSQL solution

SELECT p.project_id, 
    ROUND( 
        AVG(e.experience_years) :: numeric, 2) AS average_years
FROM Project p
JOIN Employee e
    ON p.employee_id = e.employee_id
GROUP BY project_id;