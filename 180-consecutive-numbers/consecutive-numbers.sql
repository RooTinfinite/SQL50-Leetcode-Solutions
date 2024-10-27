WITH cte AS (
    SELECT num,
    LEAD(num,1) OVER() num1,
    LEAD(num,2) OVER() num2
    FROM logs
)

SELECT DISTINCT num ConsecutiveNums 
FROM cte WHERE (num=num1) AND (num=num2)
