-- Step 1: Write a Query

-- For US Customers Find the Total Number of Customers and the Average Score.
-- Define Stored Procedure
-- Step:2 Turning the Query Into a Stored Procedure

ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA' -- Default Value
AS
BEGIN
SELECT
    COUNT(*) AS Total_Customers,
    AVG(Score)AS Avg_Score
FROM Sales.Customers
WHERE Country = @Country;

-- Find the total Nr. Of Orders and Total Sales

SELECT
COUNT(OrderID) TotalOrders,
SUM(Sales) TotalSales
FROM Sales.Orders o
JOIN Sales.Customers c
ON c.CustomerID = o.CustomerID
WHERE Country = @Country;

END

-- Step 3: Execute the Stored Procedure
EXEC GetCustomerSummary @Country = 'Germany'
