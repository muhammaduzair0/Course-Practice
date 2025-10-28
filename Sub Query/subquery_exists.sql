-- Show the order details for customers in Germany

-- Main Query
SELECT
    *
FROM Sales.Orders o
WHERE EXISTS (
    SELECT 1
    FROM sales.Customers c
    WHERE Country = 'Germany' 
    AND o.CustomerID = c.CustomerID
)