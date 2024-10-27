SELECT d.name department, e1.name employee, e1.salary
FROM employee e1
LEFT JOIN employee e2 ON e1.departmentId = e2.departmentId and e1.salary < e2.salary
JOIN department d ON d.id = e1.departmentId
GROUP BY e1.id
HAVING count(distinct e2.salary) < 3 