SELECT
    s.user_id
    ,ROUND(AVG(IF(c.action='confirmed',1,0)),2) AS confirmation_rate
FROM Signups S
LEFT JOIN Confirmations C USING(user_id)
GROUP BY s.user_id