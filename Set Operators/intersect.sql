-- Find employees who are also customers.

SELECT 
    FirstName,
    LastName
FROM sales.Employees

INTERSECT
 
SELECT 
    FirstName,
    LastName
FROM sales.Customers