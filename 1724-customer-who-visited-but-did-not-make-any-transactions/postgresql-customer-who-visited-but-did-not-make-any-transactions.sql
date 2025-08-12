--VERSION WITH COUNT()

SELECT v.customer_id, COUNT(visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
    USING (visit_id)
WHERE t.transaction_id IS NULL
GROUP BY customer_id;

--VERSION WITH ARRAY_AGG() 

SELECT v.customer_id, 
       ARRAY_LENGTH(array_agg(v.visit_id), 1) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
    ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY customer_id;
