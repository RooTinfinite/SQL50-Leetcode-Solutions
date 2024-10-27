SELECT
    p.product_id
    , COALESCE(ROUND(SUM(U.UNITS*P.PRICE) / SUM(U.UNITS),2),0)     average_price
FROM Prices P
LEFT JOIN UnitsSold U
    ON p.product_id=u.product_id
        AND
    u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY product_id