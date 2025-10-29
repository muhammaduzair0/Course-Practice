-- Step:1 Find the total Sales per Customer.

WITH
    CTE_TotalSales
    AS
    (
        SELECT
            CustomerID,
            SUM(Sales) AS TotalSales
        From Sales.Orders
        GROUP BY CustomerID
    ),

