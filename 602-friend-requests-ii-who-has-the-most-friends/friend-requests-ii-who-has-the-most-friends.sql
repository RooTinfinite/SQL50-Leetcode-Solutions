SELECT A AS id, COUNT(*) AS num
FROM (
    SELECT requester_id AS A, accepter_id AS B
    FROM RequestAccepted
    UNION
    SELECT accepter_id AS A, requester_id AS B
    FROM RequestAccepted
)s
GROUP BY A ORDER BY num DESC LIMIT 1;