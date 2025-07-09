SELECT Class
FROM Courses
GROUP BY Class
    HAVING Count(student) >=5