-- Show all customer details and find the total orders of each customers

-- Main Query
SELECT *,
(
-- Subquery
    SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID = c.CustomerID
    ) TotalSales
FROM Sales.Customers c
