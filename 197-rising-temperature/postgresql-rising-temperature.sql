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

--JOIN ON jest bardziej wydajne, ponieważ:

    --Łączy tylko te wiersze, które mają sens w kontekście zapytania.

    --Unika tworzenia zbędnych par wierszy, jak ma to miejsce w CROSS JOIN, co poprawia wydajność zapytania, szczególnie przy dużych zbiorach danych.
