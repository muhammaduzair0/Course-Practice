-- Find the total numbers of customers
-- Additionally provide All Customers Details
-- Find the total number of scores for the customers

SELECT *
FROM Sales.Customers

SELECT
FirstName,
LastName,
Country,
Score
CustomerID,
COUNT(CustomerID) OVER() TotalCustomersStar,
COUNT(CustomerID) OVER() TotalCustomersOne,
COUNT(Score) OVER() TotalScores,
COUNT(Country) OVER() TotalCountries
FROM Sales.Customers