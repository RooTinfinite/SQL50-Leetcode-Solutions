-- TODO: PostgreSQL solution
SELECT manager.name
FROM Employee e
JOIN Employee manager
    ON e.managerId = manager.id
GROUP BY manager.id, manager.name
HAVING COUNT(e.id) >= 5;