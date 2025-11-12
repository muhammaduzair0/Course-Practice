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

END
