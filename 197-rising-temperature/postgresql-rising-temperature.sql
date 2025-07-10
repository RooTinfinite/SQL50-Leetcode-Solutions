-- TODO: PostgreSQL solution

--Version with CROSS JOIN:
SELECT today.id
FROM Weather AS yesterday
CROSS JOIN Weather AS today
WHERE today.recordDate - yesterday.recordDate = 1
    AND today.temperature > yesterday.temperature;

--Version with JOIN ... ON:
SELECT today.id
FROM Weather today
JOIN Weather yesterday
    ON today.recorddate = yesterday.recorddate + 1
WHERE today.temperature > yesterday.temperature;

--Alternative version with JOIN ... USING with INTERVAL::
SELECT today.id 
FROM Weather yesterday
JOIN Weather today
    ON today.recorddate = yesterday.recorddate + INTERVAL '1 day'
WHERE today.temperature > yesterday.temperature;

--JOIN ON is more efficient because:

    --It only combines rows that are relevant to the query.

    --It avoids generating unnecessary row pairs, as happens with CROSS JOIN, which improves query performance, especially with large datasets.
