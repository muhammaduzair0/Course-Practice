-- Show the details of order made by customers in Germany.

-- Main Query
SELECT
    *
FROM Sales.Orders
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Sales.Customers
    WHERE Country = 'Germany') -- Subquery
            

-- Show the details of orders for customer who are not from Germany

-- Main Query
SELECT *
FROM Sales.Orders
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Sales.Customers
    WHERE Country != 'Germany'
) -- Subquery
-- Main Query
SELECT *
FROM Sales.Orders
WHERE CustomerID NOT IN (
    SELECT CustomerID
    FROM Sales.Customers
    WHERE Country = 'Germany'
) -- Subquery