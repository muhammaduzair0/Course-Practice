-- Created Table From Sales.Customer Into Sales.DBCustomers
SELECT *
INTO Sales.DBCustomers
FROM Sales.Customers;

-- SELECT Customer to Filtering With CustomerID
SELECT *
FROM Sales.Customers
WHERE CustomerID  = 1;

