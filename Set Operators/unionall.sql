-- Combine the data from employees and customers in to one table including duplicates

SELECT 
    FirstName,
    LastName
FROM sales.Employees

UNION ALL

SELECT 
    FirstName,
    LastName
FROM sales.Customers