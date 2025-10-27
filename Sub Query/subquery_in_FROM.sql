/* Find the products that have a price higher
    than the average price of all products. */

--Main Query
SELECT
    *
FROM
    -- Subquery
    (
SELECT
        ProductID,
        Price,
        AVG(Price) OVER() AveragePrice
    FROM Sales.Products)t
WHERE Price > AveragePrice