-- Rank customers based on their total amount of sales

-- Main Query
SELECT *,
    RANK() OVER(ORDER BY TotalSales DESC) CustomerRank
FROM 
    -- Subquery
    (
SELECT
        CustomerID,
        SUM(Sales) TotalSales
    FROM Sales.Orders
    GROUP BY CustomerID)t