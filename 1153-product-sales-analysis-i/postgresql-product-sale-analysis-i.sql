--Version with JOIN ... ON

SELECT P.product_name, S.year, S.price
FROM Sales S
JOIN Product P ON S.product_id = P.product_id;

--Version with JOIN ... USING

SELECT product_name, year, price
FROM Sales
JOIN Product
    USING (product_id);