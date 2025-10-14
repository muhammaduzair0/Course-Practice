-- Find the average scores of customers and treat Nulls as 0
-- Additionally provide details such CustomerID and Last Name

SELECT
    CustomerID,
    LastName,
    Score,
    CASE
        WHEN Score IS NULL THEN 0
        ELSE Score
END CleanScore,

AVG(
    CASE
        WHEN Score IS NULL THEN 0
        ELSE Score
    END) Over() AvgCustomerCleanScore,
    AVG(Score) OVER() AvgCustomersScore
FROM Sales.Customers