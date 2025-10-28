-- Show the details of order made by customers in Germany.

-- Main Query
SELECT
    *
FROM Sales.Orders
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Sales.Customers
    WHERE Country = 'Germany') -- Subquery
            

