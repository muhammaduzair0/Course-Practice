-- Step 1: Write a Query

-- For US Customers Find the Total Number of Customers and the Average Score.
-- Define Stored Procedure
-- Step:2 Turning the Query Into a Stored Procedure

-- Total Customers from Germany: 2
-- Average Score from Germany: 425

ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA' -- Default Value
AS
BEGIN
    BEGIN TRY
        DECLARE @TotalCustomers INT, @AvgScore FLOAT;
        -- ==============================
        -- Step 1: Prepare & Cleanup Data
        -- ==============================
        IF EXISTS (SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country = @Country)
        BEGIN
            PRINT('Update NULL Scores to 0');
            UPDATE Sales.Customers
            SET Score = 0
            WHERE Score IS NULL AND Country = @Country;
        END

        ELSE
        BEGIN
            PRINT('NO NULL Scores found')
        END;

        -- ==================================
        -- Step 2: Generating Summary Reports
        -- ==================================
        -- Calculate Total Customers and Average Score for specific Country
        SELECT
            @TotalCustomers = COUNT(*),
            @AvgScore = AVG(Score)
        FROM Sales.Customers
        WHERE Country = @Country;


        PRINT 'Total Customers from ' +  @Country + ':' + CAST(@TotalCustomers AS NVARCHAR);
        PRINT 'Average Score from ' +  @Country + ':' + CAST(@AvgScore AS NVARCHAR);

        -- Calculate Total Number Of Orders and Total Sales for specific Country

        SELECT
        COUNT(OrderID) TotalOrders,
        SUM(Sales) TotalSales
        FROM Sales.Orders o
        JOIN Sales.Customers c
        ON c.CustomerID = o.CustomerID 
        WHERE Country = @Country;
    END TRY
    BEGIN CATCH
        -- ==============
        -- Error Handling
        -- ==============
        PRINT('An error occurred.')
        PRINT('Error Message: ' + ERROR_MESSAGE());
        PRINT('Error Number: ' + CAST(ERROR_NUMBER() AS NVARCHAR));
        PRINT('Error Line: ' + CAST(ERROR_LINE() AS NVARCHAR));
        PRINT('Error Procedure: ' + ERROR_PROCEDURE());
    END CATCH
END
GO

-- Step 3: Execute the Stored Procedure
EXEC GetCustomerSummary @Country = 'Germany'
EXEC GetCustomerSummary;

