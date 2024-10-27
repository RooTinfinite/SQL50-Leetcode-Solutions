SELECT 
    r.contest_id,
    ROUND
        (COUNT(r.user_id) * 100.0
            / (SELECT COUNT(user_id) FROM Users)
     , 2) Percentage
FROM 
    Register r
GROUP BY 
    r.contest_id
ORDER BY 
    percentage DESC, 
    r.contest_id ASC