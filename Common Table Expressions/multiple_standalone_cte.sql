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

