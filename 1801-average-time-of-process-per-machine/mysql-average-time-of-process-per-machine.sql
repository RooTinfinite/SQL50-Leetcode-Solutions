SELECT
    machine_id
    ,ROUND(AVG(END.timestamp - START.timestamp),3) AS processing_time
FROM Activity START
JOIN Activity END
    USING(machine_id,process_id)
WHERE START.activity_type = 'start'
    AND END.activity_type = 'end'
GROUP BY machine_id