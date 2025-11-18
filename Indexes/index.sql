-- Created Table From Sales.Customer Into Sales.DBCustomers
SELECT *
INTO Sales.DBCustomers
FROM Sales.Customers;

-- SELECT Customer to Filtering With CustomerID
SELECT *
FROM Sales.Customers
WHERE CustomerID  = 1;

-- Create Clustered Index Of CustomerID
CREATE CLUSTERED INDEX idx_DBCustomers_CustomerID
ON Sales.DBCustomers (CustomerID);

-- Drop Clustered Index Because One Index Per Table Allowed
DROP INDEX idx_DBCustomers_CustomerID ON Sales.DBCustomers;

