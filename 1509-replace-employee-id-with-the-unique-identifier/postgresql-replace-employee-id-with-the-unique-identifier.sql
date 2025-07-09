-- TODO: PostgreSQL solution

---Version with LEFT JOIN ... ON
SELECT EU.unique_id, E.name
FROM Employees AS E
LEFT JOIN EmployeeUNI AS EU 
    ON E.id = EU.id;

---Version with LEFT JOIN ... USING
SELECT unique_id, name
FROM Employees
LEFT JOIN EmployeeUNI 
    USING (id);