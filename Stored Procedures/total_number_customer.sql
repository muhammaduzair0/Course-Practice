-- Step 1: Write a Query

-- For US Customers Find the Total Number of Customers and the Average Score.
-- Define Stored Procedure
-- Step:2 Turning the Query Into a Stored Procedure

-- Total Customers from Germany: 2
-- Average Score from Germany: 425

ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA' -- Default Value
AS
BEGIN

END

-- Step 3: Execute the Stored Procedure
EXEC GetCustomerSummary @Country = 'Germany'
EXEC GetCustomerSummary;

