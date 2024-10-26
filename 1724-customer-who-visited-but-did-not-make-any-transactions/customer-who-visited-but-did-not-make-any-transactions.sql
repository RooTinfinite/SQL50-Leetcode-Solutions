SELECT
    v.customer_id
    ,Count(v.visit_id)  AS count_no_trans /* = count(*) */
FROM Visits V
LEFT JOIN Transactions T USING (visit_id)
    
WHERE t.transaction_id IS NULL
GROUP BY customer_id