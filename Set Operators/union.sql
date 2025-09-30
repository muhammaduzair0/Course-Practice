-- Combine the data from employees and customers in to one table

SELECT 
    FirstName,
    LastName
FROM sales.Employees

UNION

SELECT 
    FirstName,
    LastName
FROM sales.Customers