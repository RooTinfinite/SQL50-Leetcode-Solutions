SELECT Manager.Name
FROM Employee E
JOIN Employee Manager
    ON Manager.id = e.managerId
    
GROUP BY Manager.Name, manager.id
HAVING Count(E.id) >= 5