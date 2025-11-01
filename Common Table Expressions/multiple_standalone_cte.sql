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

-- Step2: Find the last order date for each customer/

    CTE_Last_Order
    AS
    (
        SELECT
            CustomerID,
            MAX(OrderDate) AS Last_Order
        FROM Sales.Orders
        GROUP BY CustomerID
    ),

-- Step3: Rank Customers based on total sales per customer. (Nested CTE)

    CTE_Customer_Rank
    AS
    (
        SELECT
            CustomerID,
            TotalSales,
            RANK() OVER(ORDER BY TotalSales DESC) AS CustomerRank
        FROM  CTE_TotalSales
    ),

-- Step4: Segment customers based on their total sales. (Nested CTE)

    CTE_Customer_Segment
    AS
    (
    SELECT
    CustomerID,
        CASE WHEN TotalSales > 100 THEN 'High'
            WHEN TotalSales > 50 THEN 'Medium'
        ELSE 'Low'
    END CustomerSegments
    FROM CTE_TotalSales
    )

-- Main Query

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    cts.TotalSales,
    clo.Last_Order,
    ccr.CustomerRank AS CustomerRank,
FROM Sales.Customers c
    LEFT JOIN CTE_TotalSales cts
    ON cts.CustomerID = c.CustomerID
    LEFT JOIN CTE_Last_Order clo
    ON clo.CustomerID = c.CustomerID
    LEFT JOIN CTE_Customer_Rank ccr
    ON ccr.CustomerID = c.CustomerID
