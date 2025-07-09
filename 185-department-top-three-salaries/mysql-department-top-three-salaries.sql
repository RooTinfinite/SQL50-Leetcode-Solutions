SELECT
    D.name      AS Department
    ,E.name     AS Employee
    ,E.salary   AS Salary
FROM Employee E
JOIN Department D ON e.departmentId = d.id

WHERE 3 > ( SELECT COUNT( DISTINCT (EarningMoreThanMe.Salary))
            FROM Employee EarningMoreThanMe
            WHERE EarningMoreThanMe.DepartmentId = e.DepartmentId
                AND EarningMoreThanMe.Salary > e.Salary
)

        
