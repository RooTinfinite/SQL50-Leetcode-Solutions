SELECT 
    e.name
    ,b.bonus
FROM Employee e
LEFT JOIN Bonus b USING (empId)

WHERE COALESCE(bonus,0) < 1000