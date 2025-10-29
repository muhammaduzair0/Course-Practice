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

    -- Step2: Find the last order date for each customer
    CTE_Last_Order
    AS
    (
        SELECT
            CustomerID,
            MAX(OrderDate) AS Last_Order
        FROM Sales.Orders
        GROUP BY CustomerID
    )

-- Main Query
SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cts.TotalSales,
    clo.Last_Order
FROM Sales.Customers c
    LEFT JOIN CTE_TotalSales cts
    ON cts.CustomerID = c.CustomerID
    LEFT JOIN  CTE_Last_Order clo
    ON clo.CustomerID = c.CustomerID