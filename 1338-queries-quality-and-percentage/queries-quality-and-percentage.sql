SELECT 
    query_name
    ,cast(avg(rating/(position * 1.0)) as decimal(18,2)) as quality 
    ,cast((sum(case when rating < 3 then 1 else 0 end) / (count(*) * 1.0)) * 100  as decimal(5,2)) as poor_query_percentage 
FROM Queries 
    WHERE query_name IS NOT NULL
GROUP BY query_name 
