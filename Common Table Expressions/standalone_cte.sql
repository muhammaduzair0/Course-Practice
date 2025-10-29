-- Find the total Sales per Customer.

WITH CTE_TotalSales AS 
(
SELECT
CustomerID,
SUM(Sales) AS TotalSales
From Sales.Orders
GROUP BY CustomerID
)
-- Main Query
SELECT
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales
FROM Sales.Customers c
LEFT JOIN CTE_TotalSales cts 
ON cts.CustomerID = c.CustomerID