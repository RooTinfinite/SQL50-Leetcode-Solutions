SELECT
    id
    ,movie
    ,description
    ,rating
FROM Cinema 
    WHERE MOD( id, 2) = 1 
        AND 
    not description = 'boring' 
ORDER BY rating DESC