SELECT
    x
    ,y
    ,z
    ,CASE WHEN x<y+z AND y<x+z and z<x+y THEN 'Yes'
    ELSE 'No' end AS triangle
FROM Triangle