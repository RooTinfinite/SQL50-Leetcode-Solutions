SELECT
    customer_id
FROM Customer
GROUP BY customer_id
    HAVING COUNT(DISTINCT product_key) = (
        SELECT COUNT(product_key) number_of_all_product FROM Product
    )  